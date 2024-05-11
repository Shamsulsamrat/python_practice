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

