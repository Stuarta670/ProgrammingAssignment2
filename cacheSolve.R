cacheSolve <- function(x, ...) {
        inv <- x$getinvrs
        if(!is.null(inv)){
                message("Getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinvrs(inv)
        inv
}