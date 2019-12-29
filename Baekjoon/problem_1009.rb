cs = []

gets.to_i.times do
    ns = gets.split(" ").map(&:to_i)
    cs.push(ns.first**ns.last)
end

cs.each do |c|
    cd = c % 10
    if cd == 0 
        puts(10)
    else
        puts(cd)
    end
end