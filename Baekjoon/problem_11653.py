def get_eratos(list_max):
    o_list = list(range(2,list_max+1))
    p_list = []
    while o_list[0]*o_list[0] <= list_max :
        p_list.append(o_list[0])
        o_list = list(filter(lambda x : x % o_list[0] != 0, o_list))
    p_list += o_list
    return p_list

cond = get_eratos(3137)

N = int(input())
i = 0

while N != 1:
    if i == len(cond):
        print(N)
        break
    if N % cond[i] == 0:
        print(cond[i])
        N //= cond[i]
    else:
        i += 1

