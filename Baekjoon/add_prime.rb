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
for i in 2..10000
    if is_prime(i) == true
        c.push(i)
    end
end
print("[")
for p in c
    print(p.to_s + ",")
end
print("]")