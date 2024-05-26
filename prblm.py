# x = range(1,11)
# for n in x: 
#   print(n)
  
# 2,4,6,8,10,12,14,16,18,20

# numbers = list(range(2, 22, 2))


# 3,6,9,12,15,18,21,24,27,30
# for num in range(3, 31, 3):  
#   print(num)

# print(numbers)

# numbers = [1, 2, 3]
# for num in numbers:
#   for i in range(1, 11):
#     print(num*i)  

# value_list= [12,33,44,55,66,77,88]
input_list=[11,22,33,90,80,70,12]
# for x in input_list:
#   if x in value_list:
#     print("Found",x)
#   else:
#     print("Not Found",x)  

my_list = [12,33,44,55,66,77,88]
for x in input_list:
  value_to_find = x
  indexes = [i for i, element in enumerate(my_list) if element == value_to_find]
  if indexes:
    print(f"The indices of {value_to_find} are: {indexes}")
  else:
    print(f"The value {value_to_find} is not found in the list.")
    
    
    
    
