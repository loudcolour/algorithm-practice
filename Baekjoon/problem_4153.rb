test_c = []

while test_c.last != [0,0,0]
    test_c.push(gets.split(" ").map(&:to_i))
end

test_c.delete([0,0,0])

def det(arr)
    as = arr.sort
    if as[0]*as[0] + as[1]*as[1] == as[2]*as[2]
        return "right"
    else
        return "wrong"
    end
end

for t in test_c
    puts(det(t))
end