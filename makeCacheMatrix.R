makeCacheMatrix <- function(x = numeric()) {
        
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
                
        }
        get <- function() x
        setinvrs <- function(n) inv <<- n
        getinvrs <- function() inv
        list(set = set, get = get, setinvrs = setinvrs, getinvrs = getinvrs)
        
}