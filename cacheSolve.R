#This function is used to either compute the inverse of a matrix or retrieve the 
#cached value of a previously computed matrix
#inv is the global variable that holds the cached value if it is present
 

cacheSolve <- function(x, ...) {
        inv <- x$getinvrs()
        #If inv is NULL, then an inverse has not been computed.
        if(!is.null(inv)){
                message("Getting cached data")
                return(inv) #Returning the cached value of the inverse
        }
        data <- x$get()
        inv <- solve(data, ...) #Solving for the inverse of matrix
        x$setinvrs(inv)
        inv #Returning the newly computed inverse
}