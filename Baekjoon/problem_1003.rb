fibs = [1,0]

40.times do |n|
    fibs.push(fibs[-1]+fibs[-2])
end

num_list = []

gets.to_i.times do
    num_list.push(gets.to_i)
end

num_list.each do |num|
    print(fibs[num])
    print(" ")
    print(fibs[num+1])
    print("\n")
end