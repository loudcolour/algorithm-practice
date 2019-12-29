nums = []

10.times do
    value = gets.to_i % 42
    if not nums.include?(value)
        nums.push(value)
    end
end

puts(nums.length)