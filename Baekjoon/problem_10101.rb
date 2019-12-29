angles = []

3.times do
    angles.push(gets.to_i)
end

if angles.reduce(0,:+) == 180
    if angles == [60,60,60]
        puts("Equilateral")
    elsif (angles[0] == angles[1]) or (angles[0] == angles[2]) or (angles[1] == angles[2])
        puts("Isosceles")
    else
        puts("Scalene")
    end
else
    puts("Error")
end