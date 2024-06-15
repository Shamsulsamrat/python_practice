# import math
# # Base class
# class Shape:
#     def area(self):
#         raise NotImplementedError("Subclasses should implement this method")
#     def perimeter(self):
#         raise NotImplementedError("Subclasses should implement this method")
# # Derived class for Circle
# class Circle(Shape):
#     def __init__(self, radius):
#         self.radius = radius
#     def area(self):
#         return math.pi * self.radius ** 2
#     def perimeter(self):
#         return 2 * math.pi * self.radius
# # Derived class for Rectangle
# class Rectangle(Shape):
#     def __init__(self, length, width):
#         self.length = length
#         self.width = width
#     def area(self):
#         return self.length * self.width
#     def perimeter(self):
#         return 2 * (self.length + self.width)
# # Function to demonstrate polymorphism
# def print_shape_details(shape):
#     print(f"Area: {shape.area()}")
#     print(f"Perimeter: {shape.perimeter()}")
# # Creating objects
# circle = Circle(5)
# rectangle = Rectangle(4, 7)
# # Using polymorphism to call the area and perimeter methods on different types of objects
# for shape in [circle, rectangle]:
#     print(f"Shape: {shape.__class__.__name__}")
#     print_shape_details(shape)
#     print()
    

# # Base class
# class Animal:
#     def make_sound(self):
#         raise NotImplementedError("Subclasses should implement this method")
# # Derived classes for specific animals
# class Dog(Animal):
#     def make_sound(self):
#         return "Woof!"
# class Cat(Animal):
#     def make_sound(self):
#         return "Meow!"
# class Cow(Animal):
#     def make_sound(self):
#         return "Moo!"
# class Duck(Animal):
#     def make_sound(self):
#         return "Quack!"
# # Function to demonstrate polymorphism
# def make_animal_sound(animal):
#     print(animal.make_sound())
# # Creating objects
# dog = Dog()
# cat = Cat()
# cow = Cow()
# duck = Duck()
# # Using polymorphism to make each animal sound
# for animal in [dog, cat, cow, duck]:
#     make_animal_sound(animal)
    
    
    
    
class Project:
    def __init__(self,name,deadline):
        self.name=name
        self.deadline=deadline

    def printname(self):
         print(f"The project name {self.name} and deadline is {self.deadline}")


class Software(Project):
    def __init__(self, name, deadline,language):
        super().__init__(name, deadline)  
        self.language=language 
    
    def printname(self):   
        print(f"The project name {self.name} and deadline is {self.deadline}.The project language is {self.language}")
        

class Reserach(Project):
    def __init__(self, name, deadline,field_of_study):
        super().__init__(name, deadline)  
        self.field_of_study=field_of_study
    
    def printname(self):   
        print(f"The project name {self.name} and deadline is {self.deadline}.The project on {self.field_of_study}")

project=Project("ritten","31")
software = Software('vscode','30', 'python')
research = Reserach('DS', '31', 'Graph')

for i in [project,software, research]:
    i.printname()




class PaymentMethod:
    def __init__(self, account_number):
        self.account_number = account_number

    def process_payment(self, amount):
        # Implement payment processing logic for the specific method
        pass

class CreditCard(PaymentMethod):
    def __init__(self, account_number, cvv):
        super().__init__(account_number)
        self.cvv = cvv

    def process_payment(self, amount):
        # Simulate credit card payment with CVV verification
        print(f"Processing credit card payment for ${amount:.2f}")

class DebitCard(PaymentMethod):
    def __init__(self, account_number, pin):
        super().__init__(account_number)
        self.pin = pin

    def process_payment(self, amount):
        # Simulate debit card payment with PIN verification
        print(f"Processing debit card payment for ${amount:.2f}")

def process_order(payment_method, amount):
    payment_method.process_payment(amount)

# Example usage
order_amount = 100
payment_method = DebitCard("1234567890", "123")  # Or DebitCard instance
process_order(payment_method, order_amount)



