## These functions use the same general form as makeVector & cacheMean in the
## problem statement.

## makeCacheMatrix creates a list of functions to set/get the matrix & its inverse

makeCacheMatrix <- function(x = matrix()) {

}

makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}

## cacheSolve inverts the matrix or returns the inverse from the cache (if has already
## been calculated)

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}
