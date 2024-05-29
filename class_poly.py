import math
# Base class
class Shape:
    def area(self):
        raise NotImplementedError("Subclasses should implement this method")
    def perimeter(self):
        raise NotImplementedError("Subclasses should implement this method")
# Derived class for Circle
class Circle(Shape):
    def __init__(self, radius):
        self.radius = radius
    def area(self):
        return math.pi * self.radius ** 2
    def perimeter(self):
        return 2 * math.pi * self.radius
# Derived class for Rectangle
class Rectangle(Shape):
    def __init__(self, length, width):
        self.length = length
        self.width = width
    def area(self):
        return self.length * self.width
    def perimeter(self):
        return 2 * (self.length + self.width)
# Function to demonstrate polymorphism
def print_shape_details(shape):
    print(f"Area: {shape.area()}")
    print(f"Perimeter: {shape.perimeter()}")
# Creating objects
circle = Circle(5)
rectangle = Rectangle(4, 7)
# Using polymorphism to call the area and perimeter methods on different types of objects
for shape in [circle, rectangle]:
    print(f"Shape: {shape.__class__.__name__}")
    print_shape_details(shape)
    print()
    

# Base class
class Animal:
    def make_sound(self):
        raise NotImplementedError("Subclasses should implement this method")
# Derived classes for specific animals
class Dog(Animal):
    def make_sound(self):
        return "Woof!"
class Cat(Animal):
    def make_sound(self):
        return "Meow!"
class Cow(Animal):
    def make_sound(self):
        return "Moo!"
class Duck(Animal):
    def make_sound(self):
        return "Quack!"
# Function to demonstrate polymorphism
def make_animal_sound(animal):
    print(animal.make_sound())
# Creating objects
dog = Dog()
cat = Cat()
cow = Cow()
duck = Duck()
# Using polymorphism to make each animal sound
for animal in [dog, cat, cow, duck]:
    make_animal_sound(animal)