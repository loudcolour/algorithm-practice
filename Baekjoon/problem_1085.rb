arr = gets.split(" ").map(&:to_i)
x = arr[0]
y = arr[1]
w = arr[2]
h = arr[3]

puts([x,w-x,y,h-y].min)