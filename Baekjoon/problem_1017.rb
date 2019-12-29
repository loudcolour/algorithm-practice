length = gets.to_i
num_set = gets.split(" ").map(&:to_i).sort

def is_prime(n)
    if n == 1
        return false
    elsif n == 4
        return false
    end
    i = 2
    while i * i <= n 
        if n % i == 0
            return false
        end
        i += 1
    end
    return true
end

history = []

for i in num_set.drop(1)
    t_num_set = num_set.clone
    if is_prime(num_set.first + i)
        
    end
end
