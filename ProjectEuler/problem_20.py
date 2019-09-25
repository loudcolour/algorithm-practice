def factorial(n):
    product = 1
    for i in range(1,n+1):
        product *= i
    return product

def digit_sum(n):
    string_n = str(n)
    d_sum = 0
    for char in string_n:
        d_sum += int(char)
    return d_sum

print(digit_sum(factorial(100)))