'''No:01
Use the get method to print the value of the "model" key of the car dictionary.
car =	{
   "brand": "Ford",
    "model": "Mustang",
    "year": 1964
}
print(?)
'''
#Ans:
car =	{
   "brand": "Ford",
    "model": "Mustang",
    "year": 1964
}
print(car.get("model"))

'''No:02
What will be the output of the following code?
car = {
    "brand": "Ford",
    "model": "Mustang",
    "year": 1964
}
           x = car.items()
'''
#Ans
car = {
    "brand": "Ford",
    "model": "Mustang",
    "year": 1964
}
x = car.items()
print(x)

class emplyee:
  def __init__(self, name, salary):
    self.name = name
    self.salary = salary
    
  def getsalary(self):
    print(f"Hello my name is {self.name} My Salary is{self.salary}")

person1 = emplyee("Samrat", 36000)
person2 = emplyee("Azad", 38000)

print(person1.getsalary())
print(person2.getsalary())


class CardPayment:
    def make_payment(self):
        print('pay with card')
    
class CashPayment:
    def make_payment(self):
        print('pay with cash')

class Rocket:
    def make_payment(self):
        print('pay with rocket')


card_pay = CardPayment()
cash_pay = CashPayment()
rocket_pay = Rocket()

def pay():
    for i in [card_pay, cash_pay, rocket_pay]:
        i.make_payment()
    
# pay()


class Employee:
    def _init_(self, name, id, salary):
        self.name = name
        self.id = id
        self.salary = salary

    def work(self):
        return f"{self.name} is working"

    def get_salary(self):
        return f"{self.name} is getting salary {self.salary}"


class Manager(Employee):
    def _init_(self, name, id, salary, department):
        super()._init_(name, id, salary)
        self.department = department

    def work(self):
        return f"{self.name} is managing {self.department} department"


class Engineer(Employee):
    def _init_(self, name, id, salary, specialty):
        super()._init_(name, id, salary)
        self.specialty = specialty

    def work(self):
        return f"{self.name} has specialty on {self.specialty}"


manager = Manager("Samrat", 1, 1000, 'Finance')
engineer = Engineer("Rafiq", 2, 2000, 'IT')


for employee in [manager, engineer]:
    print(employee.work())