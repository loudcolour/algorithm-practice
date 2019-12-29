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

min = gets.to_i
max = gets.to_i
c = []

for num in min..max
    if is_prime(num) == true
        c.push(num)
    end
end

if c == []
    puts(-1)
else
    puts(c.reduce(0, :+))
    puts(c.first)
end


