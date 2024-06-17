'''1.Input: fruits = ["apple", "banana", "cherry", "kiwi", "mango"]
Write down the list comprehension that will give below output
Output: ['banana', 'cherry', 'kiwi', 'mango']'''
#ans
fruits = ["apple", "banana", "cherry", "kiwi", "mango"]
output = [fruit for fruit in fruits if fruit != "apple"]
print(output)


'''2.
Input: fruits = ["apple", "banana", "cherry", "kiwi", "mango"]
Write down the list comprehension that will give below output
Output: ['APPLE', 'BANANA', 'CHERRY', 'KIWI', 'MANGO']
'''
#Ans
fruits = ["apple", "banana", "cherry", "kiwi", "mango"]
output = [fruit.upper() for fruit in fruits]
print(output)

'''NO:3
Sort the below list descending order
 ["banana", "Orange", "Kiwi", "cherry"]
'''
#Ans
fruit=["banana", "Orange", "Kiwi", "cherry"]
fruit.sort(reverse=True)
print(fruit)

'''No:4
list1 = ["a", "b", "c"]
list2 = [1, 2, 3]
Join the above two list
'''
#Ans
list1 = ["a", "b", "c"]
list2 = [1, 2, 3]
list1.extend(list2)
print(list1)

'''No:5
Make new list from below list
thislist = ["apple", "banana", "cherry"]
'''
thislist = ["apple", "banana", "cherry"]
new_list=thislist.copy
print(new_list)
