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

## Calculates the inverse of the special matrix created with makeCacheMatrix
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cacheSolve retrieves the inverse from the cache.
cacheSolve <- function(x, ...) {
        matrixInverse <- x$getInverse()
        if(!is.null(matrixInverse)) {
                message("getting cached inverse matrix")
                return(matrixInverse)
        }
        matrix <- x$get()
        matrixInverse <- solve(matrix, ...)
        x$setInverse(matrixInverse)
        matrixInverse
}
