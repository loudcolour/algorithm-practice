def gcd(a,b)
    while b != 0
        a %= b
        a,b = b,a
    end
    return a
end

n = gets.split(" ").map(&:to_i)

puts(gcd(n[0],n[1]))
puts(n[0]*n[1]/gcd(n[0],n[1]))