thistuple = ("apple", "banana", "cherry")
print(thistuple)



thistuple = ("apple", "banana", "cherry")
print(type(thistuple))



thistuple = ("apple", "banana", "cherry", "apple", "cherry")
print(thistuple)



thistuple = ("apple", "banana", "cherry", "apple", "cherry")
print(len(thistuple))


thistuple = ("apple",)
print(type(thistuple))




x = ("apple", "banana", "cherry")
y = list(x)
y[1] = "kiwi"
x = tuple(y)
print(x)




fruits = ("apple", "banana", "cherry")
(green, yellow, red) = fruits
print(green)
print(yellow)
print(red)



fruits = ("apple", "banana", "cherry", "strawberry", "raspberry")
(green, yellow, *red) = fruits
print(green)
print(yellow)
print(red)



thistuple = ("apple", "banana", "cherry")
for i in range(len(thistuple)):
  print(thistuple[i])



thistuple = (1, 3, 7, 8, 7, 5, 4, 6, 8, 5)
x = thistuple.count(5)
print(x)



thistuple = (8, 3, 7, 8, 7, 5, 4, 6, 8, 5)
x = thistuple.index(8)
print(x)

#Tuple Length
z_tuple = ("a", "b", "c","d","e","f")
print(len(z_tuple))

#Access Tuple Items
z_tuple = ("a", "b", "c","d","e","f")
print(z_tuple[:4])

z_tuple = ("a", "b", "c","d","e","f")
print(z_tuple[::-1])