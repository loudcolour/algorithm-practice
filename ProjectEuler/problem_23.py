def fact(n):
    p = 1
    for i in range(1,n+1):
        p *= i
    return p

print(fact(9))

k = 1e6
i = 9
num_arr = []
num_str = [0,1,2,3,4,5,6,7,8,9]
num_ref = []

while i >= 1:
    f = fact(i)
    n = k // f
    k %= f
    num_arr.append(n)
    i -= 1

for i in num_arr:
    ii = int(i)
    num_ref.append(num_str[ii-1])
    del num_str[ii-1]

print(num_ref)


