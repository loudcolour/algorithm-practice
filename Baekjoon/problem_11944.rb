arrnm = gets.split(" ").map(&:to_i)
n = arrnm.first
m = arrnm.last

ans = ""
n.times do
    ans += n.to_s
end

if ans.length > m
    ans = ans[0...m]
end

puts(ans)