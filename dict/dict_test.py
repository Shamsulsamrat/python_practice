x=["samrat 10","rafiq 20","azad 30","mamun 40","rafiq 50","samrat 0"]  #print them where value are greater then 50.
name_dict={}

for element in x:
  # Split the string to separate name and value
  name, value_str = element.split()
  
  # Convert the value string to integer
  value = int(value_str)
  if name in name_dict:
    name_dict[name]= name_dict[name] + value 
  else:
    name_dict[name]= value
  
  print(name_dict)

for key, value in name_dict.items():
  if value>50:
    print(key)
    print(value)



list1 = ["a", "b" , "c"]
list2 = [1, 2, 3]
list1.extend(list2)
print(list1)
