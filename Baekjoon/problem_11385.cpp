#include <iostream>
#include <complex>
#include <cmath>
#include <vector>

using cd = std::complex<long double>;
const long double PI = std::acos(-1.L);

void fft(std::vector<cd>& a, bool invert) {
    int n = a.size(), i;
    if (n == 1)
        return;

	std::vector<cd> a0(n / 2), a1(n / 2);
    for (i = 0; 2 * i < n; i++) {
        a0[i] = a[2*i];
        a1[i] = a[2*i+1];
    }

    fft(a0, invert);
    fft(a1, invert);

    long double ang = 2 * PI / n * (invert ? -1 : 1);

	std::vector<cd> w_s(n/2);
	for (i = 0; 2 * i < n; i++) {
		cd w_i(std::cos(ang * i), std::sin(ang * i));
		w_s[i] = w_i;
	}

    for (i = 0; 2 * i < n; i++) {
        a[i] = a0[i] + w_s[i] * a1[i];
        a[i + n/2] = a0[i] - w_s[i] * a1[i];

        if (invert) {
            a[i] /= 2;
            a[i + n/2] /= 2;
        }
    }
}

void conv(std::vector<cd>& a, std::vector<cd>& b) {
	unsigned int n = a.size(), i;
	int m = n;
	
	if (n & (n-1)) {
		for (m = 1; m < 2 * n; m *= 2);
		a.resize(m);
		b.resize(m);
		
		for (i = 0; i < n; i++)
			b[m-n+i] = b[i];
	}

	fft(a, false);
	fft(b, false);
	
	for (i=0; i < m; i++)
		a[i] *= b[i];
	fft(a, true);

	if (n & (n-1)) {
		a.resize(n);
		b.resize(n);
	}
}

int main() {
	unsigned int N, M;
	std::cin >> N >> M;
	unsigned int L = N + M;
	
	unsigned int i;
	std::vector<cd> f(L+1, 0), g(L+1, 0);

	for (i = 0; i < N+1; i++)
		std::cin >> f[i];

	for (i = 0; i < M+1; i++)
		std::cin >> g[i];

	conv(f, g);
	
	long long res = (long long)(f[0].real() + (f[0].real() > 0 ? 0.5 : -0.5));
	for (i = 1; i < L+1; i++) {
		res ^= (long long)(f[i].real() + (f[i].real() > 0 ? 0.5 : -0.5));
	}

	std::cout << res << "\n";

	return 0;
}
