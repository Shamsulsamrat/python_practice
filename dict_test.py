x=["samrat 10","rafiq 20","azad 30","mamun 40","rafiq 50","samrat 60"]  #print them where value are greater then 50.


for element in x:
  # Split the string to separate name and value
  name, value_str = element.split()
  
  # Convert the value string to integer
  value = int(value_str)
  
  if value > 50:
    print(element)
