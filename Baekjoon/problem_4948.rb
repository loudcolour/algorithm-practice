def is_prime(n)
    if n == 1
        return false
    elsif n == 4
        return false
    end
    i = 2
    while i * i <= n 
        if n % i == 0
            return false
        end
        i += 1
    end
    return true
end

c = []

test_c = []

while test_c.last != 0
    test_c.push(gets.to_i)
end

test_c.delete(0)

for n in test_c
    c = 0

    for num in n..(2*n)
        if is_prime(num) == true
            c += 1
        end
    end

    puts(c)
end