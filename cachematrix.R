## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
set <- function(y) {   
}
get <- function() x
 setiverse <- function(inverse) i<<- inverse
getinverse <- function() i
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}
        


## Write a short comment describing this function
acheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    
    # Check if the inverse is already cached
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    
    # If not cached, calculate the inverse
    data <- x$get()
    i <- solve(data, ...)
    
    # Cache the result
    x$setinverse(i)
    i
}
        ## Return a matrix that is the inverse of 'x'
