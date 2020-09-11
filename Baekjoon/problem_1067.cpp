#include <iostream>
#include <complex>
#include <cmath>
#include <vector>

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

int main(void) {
    int n, i;
	std::cin >> n;
	std::vector<cd> a(n), b(n);

    for (i = 0; i < n; i++)
        std::cin >> a[i];
    for (i = 1; i <= n; i++)
        std::cin >> b[n-i];
 
    conv(a, b);
 
	double res = 0;
    for (i = 0; i < n; i++) {
		if (res < a[i].real())
			res = a[i].real();
	}

	std::cout << (int)(res + (res > 0 ? 0.5 : -0.5)) << "\n";

    return 0;
}
