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

def next_prime(p)
    if p == 2
        k = p + 1
    else
        k = p + 2
    end
    while is_prime(k) == false
        k += 2
    end
    return k
end

def factorise(n)
    l = 2
    while n != 1
        while n % l == 0
            puts(l)
            n /= l
        end
        l = next_prime(l)
    end
end

factorise(gets.to_i)