import numpy as np

N = int(input())
X = np.array(list(map(int, input().split())))
Y = np.array(list(map(int, input().split()))[::-1])

X = np.fft.fft(X)
Y = np.fft.fft(Y)
X *= Y
X = np.fft.ifft(X)
res = np.max(np.round(np.real(X)))

print(int(res))

