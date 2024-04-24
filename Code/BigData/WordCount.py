from pprint import pprint

with open("purchases.txt", "r") as file:
    data = file.readlines()

# colonnes:
# date / hour / place / item / price / payment_method

w1 = "Fort"
w2 = "Sporting"
count_w1 = 0
count_w2 = 0
semi_treated_data = []
for line in data:
    if w1 and w2:
        if w1 in line: count_w1 += 1
        if w2 in line: count_w2 += 1
    # let's pretend it's perfect data
    date, hour, place, item, price, payment_method = line.split('\t')
    payment_method = payment_method[:-2] # removing spacing
    record = {
        "date": date,
        "hour": hour,
        "place": place,
        "item": item,
        "price": price,
        "payment_method": payment_method,
    }
    semi_treated_data.append(record)

# pprint(semi_treated_data[20:30])
# print()
# print(f"W1({w1}): {count_w1}\nW2({w2}): {count_w2}")

word_count = {}
for item in semi_treated_data:
    for value in item.values():
        splited_values = value.split(' ')
        for spl_value in splited_values:
            if spl_value not in word_count:
                word_count[spl_value] = 1
            else: word_count[spl_value] += 1

print(len(word_count))
for key in list(word_count)[:20]:
    print(f"{key}:{word_count[key]}")
