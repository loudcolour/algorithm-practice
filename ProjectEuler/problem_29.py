powers = []

def power(a,b):
    product = 1
    for i in range(0,b):
        product *= a
    return product

def arr_duprem(arr):
    i = 0
    arr.sort()
    while i < len(arr) - 1:
        if arr[i] == arr[i+1]:
            del arr[i]
        else:
            i += 1


for i in range(2,101):
    for j in range(2,101):
        powers.append(power(i,j))

arr_duprem(powers)
print(powers)
print(len(powers))