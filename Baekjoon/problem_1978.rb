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

n = gets.to_i
nums = gets.split(" ").map(&:to_i)
c = 0

for num in nums
    if is_prime(num) == true
        c += 1
    end
end

puts(c)
