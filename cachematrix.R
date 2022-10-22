##For large square matrices, it may take too long to compute the inverse, especially if it has to be computed repeatedly (e.g. in a loop). 
##If the contents of the matrix do not change, it may make sense to cache the matrix inverse so that, when we need it again, it can be looked up in the cache rather than recomputed. In this Programming Assignment, we take advantage of the scoping rules of the R language and observe how they can be manipulated to preserve state inside of an R object.

##For this assignment, we introduce the <<- operator which can be used to assign a value to an object in an environment that is different from the current environment. Below are two functions that we will use to create a special object that stores a square matrix and caches its inverse.

##The first function, makeCacheMatrix creates a special “matrix”, which is really a list containing a function to:

##1.set the elements of the matrix
##2.get the elements of the matrix
##3.set the elements of the matrix inverse
##4.get the elements of the matrix inverse
