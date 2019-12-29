def is_prime(n):
    if n == 1:
        return False
    elif n == 4:
        return False
    i = 2
    while i * i <= n:
        if n % i == 0:
            return False
        i += 1
    return True

def next_prime(p):
    if p == 2:
        k = p + 1
    else:
        k = p + 2
    while is_prime(k) == False:
        k += 2
    return k

def factorise(n):
    l = 2
    while n != 1:
        while n % l == 0:
            print(l)
            n /= l
        l = next_prime(l)

factorise(int(input()))