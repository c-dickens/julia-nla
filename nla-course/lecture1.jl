### L01a Lightning Round

versioninfo()

A = rand(5,5)

A[1,1] # accessing individual entries

A[1:2,3:4]
# Can compute the lower 2 by 2 block of A^10 without storing A^10
(A^10)[4:5,4:5]

# list comprehensions
[i for i=1:5]
[trace(rand(n,n)) for n = 1:5]
x = 1:10
[x[i] + x[i+1] for i=1:9]

z = [eye(n) for n=1:5]
z[1]
z[2]
A = [i+j+k for i=1:5, j=1:5, k=1:2]

# Commands ndims() and typeof()
#ndims(ans)

#ndims(z)

typeof(z)
typeof(z[3])

typeof(A)

# Vectors are 1d arrays
v = rand(5,1)

vv = vec(v)

v .== vv

v - vv

w = rand(5)

Mv = [v w]

x = Mv[:,1]

y = Mv[:,2]

x == v # different types

x .== v # has same entrywise 'value'

y == w

# 1D and 2D arrays
w = 1.0:5
A = [i+j for i = 1:5, j=1:5]
A*w
A*v

# Note that because vectors are special types it is not immediate how to multiply
# two columns of a matrix

# B=[A[i,:]*A[:,j] for i=1:5, j=1:5]
# Above line won't work

B=[dot(A[i,:],A[:,j]) for i=1:5, j=1:5]
B=[A[i,:]⋅A[:,j] for i=1:5, j=1:5]  # can use '\cdot'

inv(B)

ones(3,5)
ones(5)
ones(rand(1:3, 4,6))
rand(1:3, 4,6)

# imaginary unit
im

2im

# ternary operators

si(x) = (x>0) ? 1 : -1

si(-13)

# Writing programs
#n = Int(ARGS[1])
#println(rand(1:n,n,n))
#@show b=2

#c=4
