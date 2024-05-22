def reverse_recursive(l):
  if not l:
    return []
  held_value = l[0]
  l = l[1:]
  l = reverse_recursive(l)
  l.append(held_value)
  return l

import random, time
def matrix_kek():
  while True:
    rand1 = random.randrange(999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)
    rand2 = random.randrange(999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)

    # time.sleep(rand1/rand2)
    time.sleep((random.random() * 3)/10)

    rand1 = str(rand1)
    rand2 = str(rand2)
    print(f"{' '.join([chr(int(x+y)) if x != "0" else " " for x, y in zip(rand1,rand2)])}")

matrix_kek()