arr = list(map(int, input().split()))

if arr[0] < arr[1]:
    print("<")
elif arr[0] > arr[1]:
    print(">")
else:
    print("==")
