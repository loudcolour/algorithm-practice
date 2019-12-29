test_c = []

while test_c.last != [0,0]
    test_c.push(gets.split(" ").map(&:to_i))
end

def det(arr)
    if arr[0] < arr[1]
        if arr[1] % arr[0] == 0
            return "factor"
        else
            return "neither"
        end
    elsif arr[0] > arr[1]
        if arr[0] % arr[1] == 0
            return "multiple"
        else
            return "neither"
        end
    end
end

for t in test_c
    puts(det(t))
end
