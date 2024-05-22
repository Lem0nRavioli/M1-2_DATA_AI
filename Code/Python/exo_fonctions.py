# Ex1
def myPutStr(x):
    if isinstance(x, int):
        return "et pourquoi pas 42?"
    return str(x)


# Ex2
def computeSurfaceM2(l, w):
    return f"Votre surface est de {l*w}m²"


# Ex3
def detectMyAgeByNight(age:int) -> str:
    if age < 18:
        return f"Vous pouvez entrer vous êtes majeur vous avez {age}"
    if age > 41:
        return f"Bienvenu patron"
    return f"Vous pouvez entrer vous êtes majeur vous avez {age}"


# Ex4
table = [[1,2,3.33,12,5,6],[3,2,1,4],[6.76222,4,2,5], [4,5,3.56,22, 5], [3]]
def biggest_length_number(num_list):
    return max(num_list, key=lambda x: len(str(x)))

# print(biggest_length_number(table[0]))

def tableGenerator(table):
    # value to equalize table
    num_col = len(max(table, key=len))
    max_char = len(str(max(max(table, key=biggest_length_number))))
    if max_char < 5: max_char = 5
    
    # generate column names
    print(f"| {' '*5} | {''.join(['Test' + str(i) + " "*(max_char - 5) + ' | ' for i in range(num_col)])}")
    print(f"| {'-'*5} | {''.join(["-"*(max_char) + ' | ' for _ in range(num_col)])}")

    # generate row names & data
    for i, line in enumerate(table):
        # equalize rows with "N/A"
        while len(line) < num_col:
            line.append("N/A")
        print(f"| {'Data' + str(i + 1)} | ", end='')
        for element in line:
            print(f"{str(element) + " "*(max_char - len(str(element)))} | ", end='')
        print()

tableGenerator(table)

# Ex5
import phonenumbers.geocoder
import datetime, time, psutil
def display_clock():
    while psutil.sensors_battery().power_plugged == True:
        print(datetime.datetime.now().strftime("%H:%M:%S"))
        time.sleep(1)
# display_clock()

# Ex6
def is_palindrome(check):
    half_len = len(check)//2
    first_half = check[:half_len]
    second_half = check[-half_len:]
    for i, element in enumerate(first_half):
        if element != second_half[-i-1]:
            return False
    return True
    # return check == check[::-1]

print(f"bob is a palindrom: {is_palindrome("bob")}")
print(f"pasbob is a palindrom: {is_palindrome("pasbob")}")

# Ex7
import phonenumbers
def validMyInternationalPhone(num, indicatif_pays):
    try:
        phone_number_object = phonenumbers.parse(indicatif_pays + num)
        country = phonenumbers.geocoder.country_name_for_number(phone_number_object, 'en')
        if country in ["France", "United States"]:
            return True
        return False
    except:
        return False

# print(validMyInternationalPhone("0649387994", "+33"))

# Ex8
def fibonacci_recur(result, lim):
    if len(result) < 2:
        result = [1, 1]
    if len(result) >= lim:
        return result
    result.append(result[-2] + result[-1])
    fibonacci_recur(result, lim)
    return result

# print(fibonacci_recur([], 12))

# Ex9
def chrono(func):
    def wrapper():
        start_time = datetime.datetime.now()
        func()
        print(f"time elapsed: {datetime.datetime.now() - start_time}")
    return wrapper

@chrono
def test_chrono():
    time.sleep(1)
    print("hello")

test_chrono()