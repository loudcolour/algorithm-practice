str = gets.chomp
str_S = gets.chomp
iter = gets.to_i

iter.times do
    str = str_S.gsub("$",str)
end

min_max = gets.split(" ").map(&:to_i)
puts(str[(min_max.first-1)...min_max.last])