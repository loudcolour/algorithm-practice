num_1 = int(input())
num_2 = int(input())

num_2_1 = num_2 % 10
num_2_2 = (num_2 // 10) % 10
num_2_3 = num_2 // 100

print(num_2_1*num_1)
print(num_2_2*num_1)
print(num_2_3*num_1)

print(num_1*num_2)
