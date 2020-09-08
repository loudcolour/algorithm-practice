time = list(map(int,input().split()))

if time[1] >= 45:
    print(f"{time[0]} {time[1]-45}")
else:
    if time[0] == 0:
        print(f"23 {time[1]+15}")
    else:
        print(f"{time[0]-1} {time[1]+15}")
