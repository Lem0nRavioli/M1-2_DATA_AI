def reverse_recursive(l):
  if not l:
    return []
  held_value = l[0]
  l = l[1:]
  l = reverse_recursive(l)
  l.append(held_value)
  return l