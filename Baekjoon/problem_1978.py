_ = int(input())
tests = list(map(int, input().split()))

def get_eratos(list_max):
    o_list = list(range(2,list_max+1))
    p_list = []
    while o_list[0]*o_list[0] <= list_max :
        p_list.append(o_list[0])
        o_list = list(filter(lambda x : x % o_list[0] != 0, o_list))
    p_list += o_list
    return p_list

cond = get_eratos(997)
count = 0

for t in tests:
    if t in cond:
        count += 1

print(count)
