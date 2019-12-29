def is_h(n)
    if (((n - n % 100)/100 + n % 10) * 10 == (n % 100 - n % 10) * 2 ) or (n < 100)
        return true
    else
        return false
    end
end

n = gets.to_i
c = 0

for i in 1..n
    if is_h(i)
        c += 1
    end
end

puts(c)