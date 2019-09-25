from math import floor
from math import sqrt

def proper_divisor(n):
    sup = floor(sqrt(n))
    proper_divs = []
    result_divs = []
    for i in range(1, sup+1):
        if n % i == 0:
            proper_divs.append(i)
    for p in proper_divs:
        result_divs.append(p)
    for p in proper_divs[::-1]:
        if n // p != p and p != 1:
            result_divs.append(n // p)
    return result_divs

def sum_proper_divisor(n):
    sum_p = 0
    for i in proper_divisor(n):
        sum_p += i
    return sum_p

def amicability(n):
    b = sum_proper_divisor(n)
    if sum_proper_divisor(b) == n and b != n:
        return (True, b)
    else:
        return (False, b)

amicable_number = []

def in_array(elm, arr):
    for e in arr:
        if elm == e:
            return True
    return False

for i in range(1,10001):
    if not in_array(i,amicable_number):
        am = amicability(i)
        if am[0]:
            amicable_number.append(i)
            amicable_number.append(am[1])

sum_am = 0

for p in amicable_number:
    sum_am += p

print(sum_am)