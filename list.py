#create a List:
y_list=[12,"AZAD",12.09,"COW","DOG","CAT"]
print(y_list)

#List Length
x_list=[12,"AZAD",12.09,"COW","DOG""CAT","COW","DOG",12]
print(x_list)
print(len(x_list))

#Access List Items:
x_list=[12,"AZAD",12.09,"COW","DOG""CAT","COW","DOG",]
print(x_list[::-1])

#Check if Item Exists
x_list=[12,"AZAD",12.09,"COW","DOG""CAT","COW","DOG",]
if "DO" in x_list:
    print("YES")
else:
    print("NOPE")
    
#Change Item Value
x_list=[12,"AZAD",12.09,"COW","DOG","CAT","COW","DOG",]
x_list[6]="SAMRAT"
print(x_list)

#Insert New Items
x_list=[12,"AZAD",12.09,"COW","DOG","CAT","COW","DOG",]
x_list.insert(0,"SAMRAT",)
print(x_list)

#Append Items:
x_list=[12,"AZAD",12.09,"COW","DOG","CAT","COW","DOG",]
x_list.append("SAMRAT")
print(x_list)

#Extend List:
x_list=[12,"AZAD",12.09,"COW","DOG","CAT","COW","DOG",]
y_list=[12,"AZAD",12.09,"COW","DOG","CAT"]
x_list.extend(y_list)
print(x_list)

#Python - Remove List Items
x_list=[12,12.09,"COW","DOG","CAT","COW","DOG",]
x_list.pop()
print(x_list)


dict= {'norway': 'oslo', 'germany': 'berlin', 'france': 'paris', 'spain': 'madrid'}
if "germany" in dict:
    print("yes")
else:
    print("NOP")
for key in dict.keys():
    print(key.upper())
    
for val in dict.values():
    print(val)
    
#list compession 
x_list=["AZAD","COW","DOG","CAT","COW","DOG"]
b_list=[x for x in x_list if "O" in x ]
print(b_list)

#List sort , Reverse,Lower ,Upper
x_list=["azad","cow","dog","cat","cow","dog"]
x_list.sort()
print(x_list)

x_list=["azad","cow","dog","cat","cow","dog"]
x_list.sort(reverse=True)
print(x_list)

x_list=["azad","Cow","dog","Cat","cow","Dog"]
x_list.sort(key=str.lower)
print(x_list)

#Copy list
x_list=["azad","Cow","dog","Cat","cow","Dog"]
z=x_list.copy()
print(z)

#count List
x_list=["azad","Cow","dog","Cat","cow","Dog","dog"]
print(x_list.count("dog"))

#index number
x_list=["azad","Cow","dog","Cat","cow","Dog","dog"]
print(x_list.index("Cow"))