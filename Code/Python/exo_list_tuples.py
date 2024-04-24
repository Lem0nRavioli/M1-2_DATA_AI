#Ex1
print("\n################ EXERCICE 1 ################\n")
tables_todo = [1,2,3,5,8]
all_results = {}
for table in tables_todo:
    all_results[table] = {}
    print(f"Table of {table}")
    for i in range(11):
        all_results[table][i] = table * i
        print(f"{table} x {i} = {table * i}")

#Ex2
print("\n################ EXERCICE 2 ################\n")
table_of_5 = []
for i in range(11):
    table_of_5.append(f"5 x {i} = {5 * i}")
print(f"Table of 5: {table_of_5}")

#Ex3
print("\n################ EXERCICE 3 ################\n")
count = 0
table_of_5_while = []
while True:
    print(f"Current count: {count}")
    table_of_5_while.append(f"5 x {i} = {5 * i}")
    count += 1
    if count > 10: break
print(f"Table of 5 with a while: {table_of_5_while}")

#Ex4
print("\n################ EXERCICE 4 ################\n")
ex4_dict = {
    "a": 42,
    "b": 42,
    "c": 42,
    "d": 42
}
accumulator = 1
for key in ex4_dict:
    if key == "d":
        accumulator -= 42
        continue
    accumulator *= ex4_dict[key]
print(f"Accumulator = {accumulator}")

#Ex5
print("\n################ EXERCICE 5 ################\n")
for i in range(1, 6):
    print("*"*i, end=" ")
print()

#Ex6
print("\n################ EXERCICE 6 ################\n")
nbr = [5,4,3,2,1]
sorted_nbr = []
while nbr:
    min = float("inf")
    for nb in nbr:
        if nb < min: min = nb
    sorted_nbr.append(min)
    nbr.remove(nb)

print(sorted_nbr)

#Ex7
print("\n################ EXERCICE 7 ################\n")
year_list = range(1980, 2025)
print(f"Year list: {list(year_list)}")

#Ex8
print("\n################ EXERCICE 8 ################\n")
for i in range(11):
    print("1"*i)

#Ex9
print("\n################ EXERCICE 9 ################\n")
for i in range(11):
    print(f'{" "*(10-i)}{"["*i} {"]"*i}')