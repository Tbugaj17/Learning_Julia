#Introduction to functions in Julia

#Basic syntax define functions using the 'function' keyword
function my_function(x)
    return x + 1
end

#More concise 
my_function(x)= x + 1

#test
my_function(5)
my_function(3)

#functions with multiple arguments
#basic syntax
function add_numbers(a, b)
    return a + b
end

#more concise
add_numbers(a, b) = a + b

add_numbers(2, 3)
add_numbers(4, 7)

#default values for arguments 
# Define the function with a default argument
# Define the function with a keyword argument
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
julia
greet()       # Returns "Hello, World!"
greet(name="Julia")  # Returns "Hello, Julia!"
"""
