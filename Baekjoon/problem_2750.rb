test_case = gets.to_i

arr = []
test_case.times do
    arr.push(gets.to_i)
end

for i in arr.sort()
    puts(i)
end