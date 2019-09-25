def leap_year(year):
    if (year % 4 == 0 and year % 100 != 0) or year % 400 == 0:
        return True
    else:
        return False

def day_of_year(year):
    if leap_year(year):
        return 366
    else:
        return 365

def day_of_month(year,month):
    if month == 4 or month == 6 or month == 9 or month == 11:
        return 30
    elif month == 2:
        if leap_year(year):
            return 29
        else:
            return 28
    else:
        return 31

# Monday: 0

def day_from_first(year,month,day):
    sum_day = 0
    for y in range(1900, year):
        sum_day += day_of_year(y)
    for m in range(1,month):
        sum_day += day_of_month(year,m)
    sum_day += day - 1
    return sum_day

def is_sunday(year,month,day):
    if day_from_first(year,month,day) % 7 == 6:
        return True
    else:
        return False

sum_sunday = 0

for y in range(1901,2001):
    for m in range(1,13):
        if is_sunday(y,m,1):
            sum_sunday += 1

print(sum_sunday)