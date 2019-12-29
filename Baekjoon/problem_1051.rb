rect = gets.split(" ").map(&:to_i)
height = rect.first
width = rect.last

num_rect = []
height.times do
    num_rect.push(gets.split("").map(&:to_i).take(width))
end

i = rect.min
res = 1

while i != 1
    for j in 0..(height - i)
        for k in 0..(width - i)
            if (num_rect[j][k] == num_rect[j + i - 1][k]) and (num_rect[j][k] == num_rect[j][k + i - 1]) and (num_rect[j][k] == num_rect[j + i - 1][k + i - 1])
                res = i * i
            end
        end
    end
    if res != 1
        break
    end
    i -= 1
end

puts(res)