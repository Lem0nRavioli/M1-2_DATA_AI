shopping_list = ["banana", "orange", "apple"]

shop = {
  "banana": {
    "stock": 6,
    "price": 4,
  },
  "apple": {
    "stock": 0,
    "price": 2,
  },
  "orange": {
    "stock": 32,
    "price": 1.5,
  },
  "pear": {
    "stock": 15,
    "price": 3,
  },
}

def compute_bill(food):
  total = 0
  for boob in food:
    if shop[boob]["stock"] > 0 :
      total += shop[boob]["price"] 
      stock[boob]["stock"] -= 1 
  return total 

print compute_bill(shopping_list)