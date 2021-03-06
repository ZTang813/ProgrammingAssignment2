## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## I changed the original example according to the prompt to calculate the inverse matrix with a new MatrixCache Class
## This function creates our own matrix class. 
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function
## This function enables us to calculate the inverse depending on whether the inverse is calculated in advance or not .
## If the inverse has never been calculated, we calculate it, or else, we just return the previous calculated value.
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}
