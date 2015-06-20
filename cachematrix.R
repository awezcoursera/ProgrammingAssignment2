## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this is a test comment to see if this works

## creates a special vector with functions to get and set the inverse of a matrix


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


## This function computes the inverse of a matrix, if the inverse
## is already available it returns the cached value otherwise computes it
## The special matrix was generated with a call to the makeCacheMatrix() function


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
