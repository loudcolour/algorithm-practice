test_case = gets.to_i
res = []

test_case.times do
    arr = gets.split(" ")
    s = ""
    for c in arr[1].split("")
        s += c * arr[0].to_i
    end
    res.push(s)
end

for s in res
    puts(s)
end