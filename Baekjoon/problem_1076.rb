hash_n = {"black"=>0, "brown"=>1, "red"=>2, "orange"=>3, "yellow"=>4, "green"=>5, "blue"=>6, "violet"=>7, "grey"=>8, "white"=>9}
hash_e = {"black"=>1, "brown"=>10, "red"=>100, "orange"=>1000, "yellow"=>10000, "green"=>100000, "blue"=>1000000, "violet"=>10000000, "grey"=>100000000, "white"=>1000000000}

colors = []

3.times do
    colors.push(gets.chomp)
end

puts((hash_n[colors[0]]*10+hash_n[colors[1]])*hash_e[colors[2]])