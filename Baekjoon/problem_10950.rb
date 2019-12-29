n = gets.to_i
res = []

n.times do
    res.push(gets.split(" ").map(&:to_i).reduce(0,:+))
end

for r in res
    puts(r)
end