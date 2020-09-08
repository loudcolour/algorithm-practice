arr = list(map(int, input().split()))

a = arr[0]
b = arr[1]
c = arr[2]

print((a+b)%c)
print(((a%c)+(b%c))%c)
print((a*b)%c)
print(((a%c)*(b%c))%c)
