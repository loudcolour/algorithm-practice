n = gets.to_i
nums = gets.split(" ").map(&:to_i)

puts(nums.min.to_s + " " + nums.max.to_s)
