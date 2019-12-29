cases = []

gets.to_i.times do
    c = gets.split(" ").map(&:to_i)
    gets.to_i.times do
        star = gets.split(" ").map(&:to_i)
        c += star
    end
    cases.push(c)
end

print(cases)