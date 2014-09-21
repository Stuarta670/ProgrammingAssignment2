#This function creates a matrix that is used to cache the inverse of a matrix
# x is an invertible matrix argument
# inv is a global variable used to hold cached matrix of argument x.


makeCacheMatrix <- function(x = numeric()) {
        
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL #set global variable to NULL
                
        }
        get <- function() x
        setinvrs <- function(n) inv <<- n #Set global variable to inverse of matrix
        getinvrs <- function() inv        #Return the global variable
        #List of functions used by the defining function
        list(set = set, get = get, setinvrs = setinvrs, getinvrs = getinvrs)
        
}