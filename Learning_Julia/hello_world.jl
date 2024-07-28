# This is a comment
# Julia's official documentation is a great place to start.
# The JuliaAcademy offers free courses and tutorials.
# Check out the Julia Discourse and JuliaLang on GitHub for community support and code.

#Execute a single line of code with Ctrl+Enter
println("Hello World!")

#Basic arithmetic
a = 5
b = 4
a + b 
a - b
a * b 
a % b

#Vectors and matrices
v = [a,b]
u = [1,2]
v+u
 #dot product
v'u

M = [2 4; 5 6]
U = [1 4; 5 7]

A = [1 2 3; 4 1 6; 7 8 1]

#Matrixmultiplikation
M*U

#Add packages with the Pkg module
#You can also add packages in the terminal
using Pkg
Pkg.add("LinearAlgebra")

#You need this in the REPL
using LinearAlgebra

#trace
tr_A = tr(A)
println("Trace of A:", tr(A))

#Determinant
det_A = det(A)
println("Determinant of A:", det(A))

#Boolean - returns true or false
det(A) == tr(A)
det(A) != tr(A)

det(M)
det(M) <= det(A)
det(M) >= det(A)

#Inverse
inv_A =inv(A)
print("Inverse of A:", inv(A))

inv(M)

#Eigenvalues
eigenvalues_A = eigen(A).values
println("Eigenvalues of A: ", eigen(A).values)

#Simple if/else statement to calculate the the inverse
if det(A) != 0
    inv_A = inv(A)
    println("The inverse of A:", inv(A))
else 
    println("The matrix is singular and does not have an inverse.")
end

B = [3 12; 2 8]

if det(B) != 0
    inv_B = inv(B)
    println("The inverse of A:", inv(B))
else 
    println("The matrix is singular and does not have an inverse.")
end