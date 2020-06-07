## The following program creates a special object that stores a matrix and 
## cache's its inverse.

## The function, makeCacheMatrix, creates a special "matrix" object that can 
## cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        matrixInverse <- NULL
        set <- function(y) {
                x <<- y
                matrixInverse <<- NULL
        }
        get <- function() x
        setInverse <- function(solve) matrixInverse <<- solve
        getInverse <- function() matrixInverse
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
