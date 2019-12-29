fibs = [0,1]

90.times do |n|
    fibs.push(fibs[-1]+fibs[-2])
end

puts(fibs[gets.to_i])