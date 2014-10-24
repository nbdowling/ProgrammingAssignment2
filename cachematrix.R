## These functions use the same general form as makeVector & cacheMean in the
## problem statement.

## makeCacheMatrix creates a list of functions to set/get the matrix & its inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## cacheSolve inverts the matrix or returns the inverse from the cache (if it has already
## been calculated)

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- inverse(data, ...)
        x$setinverse(m)
        m
}}
