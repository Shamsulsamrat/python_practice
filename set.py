#set nerver take same value double time.
a_set={"a","b","c","d","e","a"}
print(a_set)


#Lenght calculation 
print(len(a_set))

#Loop through the set, and print the values:
for x in a_set:
    print(x)

#Single Value Add into Set

a_set.add("w")
print(a_set)

#Multi Value Add into Set

b_set={"q","a","z"}
a_set.update(b_set)
print(a_set)
print(b_set)

#Discard() method.
a_set={"a","b","c","d","e"}
a_set.discard("a")
print(a_set)

#Pop() method
a_set={"a","b","c","d","e"}
a_set.pop()
print(a_set)

#Clear() method empties the set:

a_set.clear()
print(a_set)
    
#Join multiple sets with the union() method:

set1 = {"a", "b", "c"}
set2 = {1, 2, 3}
set3 = {"John", "Elena"}
set4 = {"apple", "bananas", "cherry"}
x_set=set1.union(set2,set3,set4)
print(x_set)