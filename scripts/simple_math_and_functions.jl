# This script introduces basic data types, lists, arrays, and simple math functions in Julia.

# Introducing data types in Julia
# Integers, Floats, Strings, Booleans

x = 10 # Declare variable 
println(typeof(x)) # typeof outputs datatype

y = 3.56
println(typeof(y))

s = "hello"
println(typeof(s))

b = false
println(typeof(b))

# Arrays can be used for lists, vectors and matrices.

# Creating arrays
arr1 = [3, 2, 3, 4] 
arr2 = [1 2 3; 4 5 6]

# Accessing and modifying elements in arrays
println(arr1[1]) # Access first element
arr1[2] = 7 # Modify first element

# Basic operations on arrays

# Slicing 
subarr = arr1[1:2] # creates a new array of the first two entries of arr1

# Broadcasting
arr3 = arr1 .+1 # Adds one to each element of the array

# .... more to come
