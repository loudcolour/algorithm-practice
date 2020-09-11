#include <iostream>
#include <complex>
#include <cmath>
#include <vector>
#include <algorithm>

using cd = std::complex<double>;
const double PI = std::acos(-1);

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

    double ang = 2 * PI / n * (invert ? -1 : 1);
    cd w(1), wn(std::cos(ang), std::sin(ang));

    for (i = 0; 2 * i < n; i++) {
        a[i] = a0[i] + w * a1[i];
        a[i + n/2] = a0[i] - w * a1[i];

        if (invert) {
            a[i] /= 2;
            a[i + n/2] /= 2;
        }
        w *= wn;
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
	int N, M, max_D;
	int i;

	std::cin >> N;
	std::vector<int> dial(N);
	for (i=0; i < N; i++)
		std::cin >> dial[i];

	max_D = *std::max_element(dial.begin(), dial.end());

	std::cin >> M;
	std::vector<int> test(M);
	for (i=0; i < M; i++) {
		std::cin >> test[i];
	}

	std::vector<cd> a(max_D*2+1), b, c;

	for (i=0; i < N; i++) {
		a[dial[i]] = 1;
	}

	b = a;
	c = a;
	conv(a, b);

	for (i=0; i < max_D*2+1; i++) {
		a[i] += c[i];
	}

	unsigned int count = 0;

	for (i=0; i < M; i++) {
		if ((int)(a[test[i]].real() + (a[test[i]].real() > 0 ? 0.5 : -0.5)) != 0)
			count++;
	}

	std::cout << count << "\n";

	return 0;
}
