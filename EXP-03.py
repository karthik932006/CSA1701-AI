jug1 = 4
jug2 = 3

x = 0
y = 0

print(x, y)

x = jug1
print(x, y)

y = jug2
x = x - jug2
print(x, y)

y = 0
print(x, y)

y = x
x = 0
print(x, y)

x = jug1
print(x, y)

y = jug2
x = x - (jug2 - y)
print(x, y)