house = [[1,2,3,4,5,6,7,8,9,10,11,12,13,14]]

14.times do |i|
    floor = [1]
    13.times do |j|
        floor.push(floor.last+house.last[j+1])
    end
    house.push(floor)
end

test_case = gets.to_i
anss = []

test_case.times do
    k = gets.to_i
    n = gets.to_i
    anss.push(house[k][n-1])
end

for ans in anss
    puts(ans)
end