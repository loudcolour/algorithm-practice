lim = gets.split(" ").map(&:to_i)

s = ""
for c in lim.first..lim.last
    s += c.to_s
end

sum = s.split("").map(&:to_i).reduce(0,:+)

puts(sum)