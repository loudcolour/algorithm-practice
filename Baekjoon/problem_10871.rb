nx = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)
newarr = []

for i in arr
    if i < nx.last
        newarr.push(i)
    end
end

ans = newarr.first.to_s
for i in newarr[1..newarr.length-1]
    ans += " "
    ans += i.to_s
end

puts(ans)
