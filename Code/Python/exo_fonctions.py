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
table = [[1,2,3.33],[3,2,1],[6.7, 4, 2]]
def tableGenerator(table):
    print(f"| {' '*5} | {''.join(['Test' + str(i) + ' | ' for i in range(len(table))])}")
    print(f"| {'-'*5} | {''.join(['-----' + ' | ' for _ in range(len(table))])}")
    for i, line in enumerate(table):
        print(f"| {'Data' + str(i + 1)} | ", end='')
        for element in line:
            print(f"{str(element) + " "*(5 - len(str(element)))} | ", end='')
        print()

tableGenerator(table)

# Ex5
import datetime, time
def display_clock():
    while True:
        print(datetime.datetime.now().strftime("%H:%M:%S"))
        time.sleep(1)
# display_clock()

# Ex6
def is_palindrome(check):
    half_len = len(check)//2
    first_half = check[:half_len]
    second_half = check[-half_len:]
    for i, element in enumerate(first_half):
        if element != second_half[-i]:
            return False
    return True

# Ex7
import phonenumbers
def validMyInternationalPhone(num, indicatif_pays):
    country_dict = {
        "+33": "fr",
        "+1": "us"
    }
    phone_number_object = phonenumbers.parse(indicatif_pays + num, indicatif_pays)
    return phonenumbers.is_valid_number(phone_number_object)

# print(validMyInternationalPhone("0649387994", "+1"))

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
def chrono_deco(func):
    def wrapper():
        start_time = datetime.datetime.now()
        func()
        print(f"time elapsed: {datetime.datetime.now() - start_time}")
    return wrapper

@chrono_deco
def test_chrono_deco():
    time.sleep(1)
    print("helo")

test_chrono_deco()