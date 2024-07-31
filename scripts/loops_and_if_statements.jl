# Loops in Julia
# A 'for' loop is used to iterate over a range/collection of items.

# Simple example where i iterates through the interval 1:6 and prints out the numbers numbers.
for i in 1:6
    println(i)
end

# Loop through an array.
arr = [5, 10, 15, 20, 25]
for num in arr
    println(num)
end

# Conditional while loop.
# Syntax:
"""
while condition is true
    # code to execute
end
"""
i = 1
while i <= 10
    println(i) 
    i += 1
end

# If/else/elseif statements allows you to execute code based on a condition.
# Check if a number is positive, negative, or zero.
num = 5

if num > 0
    println("The number is positive")
elseif num < 0
    println("The number is negative")
else
    println("The number is zero")
end

# Combine loops and if statements.
# Odd/even.
for i in 1:15
    if i % 2 == 0 # if i Modulo 2 is equal to zero.
        println("$i is even")
    else 
        println("$i is odd")
    end
end

# Combine function, loop and if statement.
function generate_even_numbers(n)
    even_numbers = [] # Define an empty array.
    for i in 1:n
        if i % 2 == 0 
            push!(even_numbers, i) # When the remainder is zero, an even number is added to the array even_numbers.
        end
    end
    return even_numbers
end

println(generate_even_numbers(15)) # Sets n = 15 and print out all of the even numbers.

"""
Loops (for and while) are used to repeat code execution.
If Statements allow conditional execution of code blocks.
Combining loops and if statements enables you to perform complex logic and operations.
"""