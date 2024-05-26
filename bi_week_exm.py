#5.Write down a program that will print the odd number from 1 to 100.
for i in range(1,100):
    if i%2==1:
        print(i)
        
#6.Write down a program that will print the Fibonacci series from 1 to 10.
a,b=0,1
for i in range(10):
    print(a,end=" ")
    a,b=b,a+b

'''7 Write down a program that will find the most repeated character
Input = “python oop course”
Output = o''' 
a = "python oop course"
d={}
for i in a:
    if i in d:
        d[i]+=1
    else:
        d[i]=1

sorting = sorted(d.items(), key=lambda kv:kv[1], reverse=True)

print(sorting[0][0])


"""8.Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target. You may assume that each input would have exactly one solution, and you may not use the same element twice. You can return the answer in any order.
Input: nums = [2,7,11,15], target = 9
Output: [0,1]"""
# def two_sum(nums, target):
#     num=[2,7,11,15]
#     target=9
#     result=twosum(num,target)
#     print(result)
    
    
#Numbers = [1,2,1,1,5,6,6]. How to remove duplicates from the number list
num=[1,2,1,1,5,6,6]
num_set=set(num)
print(num_set)
new_list=list(num_set)
print(new_list)