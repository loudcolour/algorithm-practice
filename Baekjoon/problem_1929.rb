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

min_max = gets.split(" ").map(&:to_i)
c = []

for num in min_max.first..min_max.last
    if is_prime(num) == true
        c.push(num)
    end
end

for num in c
    puts(num)
end

