_ = int(input())
A = list(map(int, input().split()))
_ = int(input())
tests = list(map(int, input().split()))

for t in tests:
    if t in A:
        print(1)
    else:
        print(0)

