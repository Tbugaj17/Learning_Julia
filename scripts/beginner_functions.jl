#Introduction to functions in Julia

#Basic syntax define functions using the 'function' keyword
function my_function(x)
    return x + 1
end

#More concise 
my_function(x)= x + 1

#Test
my_function(5)
my_function(3)

#Functions with multiple arguments
#Basic syntax
function add_numbers(a, b)
    return a + b
end

#More concise
add_numbers(a, b) = a + b

add_numbers(2, 3)
add_numbers(4, 7)

#Default values for arguments 
#Define the function with a default argument
function greet(; name="World")
    return "Hello, $name"
end

# Call the function with default argument
println(greet())  # Expected output: "Hello, World!"

# Call the function with a custom argument
println(greet(name="Julia"))  # Expected output: "Hello, Julia!"

#Docstring for documentation
"""
greet(; name="World")

Returns a greeting message with the provided `name`.

# Arguments
- `name::String`: The name to include in the greeting. Defaults to "World".

# Examples
greet() # Returns "Hello, World!"
greet(name="Julia")  # Returns "Hello, Julia!"
"""
#Keyword Arguments
function person(name; age=25, profession="teacher")
    return "$name is $age years old and works as a $profession"
end

#Using default values
println(person("Mia"))

#Overwrite default values
println(person("Bob", age=30))  # Expected output: "Bob is 30 years old and works as a teacher"
println(person("Charlie", profession="engineer"))  # Expected output: "Charlie is 25 years old and works as a engineer"
println(person("Diana", age=40, profession="doctor"))  # Expected output: "Diana is 40 years old and works as a doctor"

#Docstring
"""
Key Points
Function Definition:
name is a positional argument (i.e., required).
age and profession are keyword arguments with default values.

Calling with Keyword Arguments:
Use key=value to specify a value for keyword arguments.
Keyword arguments can be provided in any order, but they must be named.
"""


