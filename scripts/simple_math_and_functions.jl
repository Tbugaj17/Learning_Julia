# This script introduces basic data types, lists, arrays, and simple math functions in Julia.

# Introducing data types in Julia
# Integers, Floats, Strings, Booleans

#Basic arithmetic operations
a = 5
b = 4
a + b 
a - b
a * b #product
a % b #Modulo
a / b #quotient
a^b #power
a<b #Boolean <> <= => returns true or false
a>b
a<=b
a<=5

x = 10 # Declare variable 
println(typeof(x)) # typeof outputs datatype

y = 3.56
println(typeof(y))

s = "hello"
println(typeof(s))

b = false
println(typeof(b))

# Arrays can be used for lists, vectors and matrices.
# Tuples 
# Dictionaries

# Creating arrays
arr1 = [3, 2, 3, 4] 
arr2 = [1 2 3; 4 5 6]

# Accessing and modifying elements in arrays
println(arr1[1]) # Access first element
arr1[2] = 7 # Modify first element
push!(arr1,8) # Add a new element in the end

# Slicing 
subarr = arr1[1:2] # creates a new array of the first two entries of arr1

# Broadcasting
arr3 = arr1 .+1 # Adds one to each element of the array

# Addition
arr4 = arr1 + arr3
println(arr4)

# Dot product
arr5 = dot(arr4, arr1)

"""
Mutable: You can modify the elements, change the size, etc.
Ordered: Elements are stored in a specific sequence, and each element can be accessed by its index.
Homogeneous by default: Typically, arrays are meant to store elements of the same type, but they can hold elements of different types if explicitly specified.
Use cases: Useful for lists of items where you might need to perform operations like sorting, filtering, or modifying the elements.
"""

# Creating Tuples

tpl = (1, 2, "hello", 3.5) # Tuples with an int, string, float
println(tpl[2]) # Accessing second element

# Creating Dictionaries
dict = Dict("name" => "Mia", "age" => 25)
println(dict["name"])  
println(dict["age"])  
dict["age"] = 32
println(dict)

"""
Mutable: You can add, remove, or change elements.
Unordered: No specific order to the elements; they are accessed by keys.
Key-value pairs: Each element (value) is associated with a unique key.
Heterogeneous: Both keys and values can be of different types.
Use cases: Useful for mapping and lookup scenarios where you need to associate values with unique keys.
"""

# Simple Math Functions

function add(x, y)
    return x + y
end

function multiply(x, y)
    return x * y
end

println(add(4, 5))
println(multiply(4, 5))

s = sum(arr1)

mx = maximum(arr1)

mn = minimum(arr3)


# Understanding these basics is essential for more advanced programming in Julia.
