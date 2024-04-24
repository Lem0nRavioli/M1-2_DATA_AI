# 1
print('Ex1:')
# print('My Python Code Forever')

# 2
print('Ex2:')
"""
    print('My Python Code\nevery day')
"""

# 3
a = None
b = True
c = "2"
d = 3
e = 4.0
f = [5, 6]
g = (7, 8)
h = {9, 10}
i = {"11": 12}

#4
my42count = "quarante-deux"
print(f"Ex4: {len(my42count)}")

#5
j = a or 42
print(f"Ex5: {j}")

#6
myArray42 = [*'Quarante-deux']
print(f"Ex6: {myArray42}")

#7
myArray42Len = len(myArray42)
print(f"Ex7: {myArray42Len}")

#8
k = f"{''.join(myArray42)}, la grande réponse sur la vie, l’univers et le reste"
print(f"Ex8: {k}")

#9
import random
rand = (temp := random.randint(1,42)) == 42 or temp
print(f"Ex9: {rand}")

#10
my42Type = lambda x: type(x).__name__
print(f"Ex10: {list(map(my42Type, [a,b,c,d,e,f,g,h,i]))}")

#11
compute42 = str(21 * 2)
print(f"Ex11: {compute42}")

#12
l = "42424242"
m = "quarante-deux" * (len(l)//2)
print(f"Ex12: {m}")

#13
aa = 24
bb = 42
bb += aa
aa = (aa - bb) * -1
bb -= aa
# a,b = b,a
print(f"Ex13: aa: {aa}, bb: {bb}")



