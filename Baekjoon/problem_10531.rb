test_case_N = gets.to_i
num_N = []

test_case_N.times do
    num_N.push(gets.to_i)
end

test_case_M = gets.to_i
num_M = []

test_case_M.times do
    num_M.push(gets.to_i)
end

sum = num_N.clone
l = num_N.length
for i in 0...l
    for j in i...l
        s = num_N[i] + num_N[j]
        sum.push(s)
    end
end

c = 0

for a in num_M
    if sum.include?(a)
        c += 1
    end
end

puts(c)
