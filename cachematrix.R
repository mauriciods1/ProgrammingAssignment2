## Put comments here that give an overall description of what your
## functions do

#this function will implement four functions, 'set', 'get', 'getinverse' and 'setinverse'
#'set' will change the initial entry matrix
#'get' will return the matrix x
#'getinverse' will return the inverse of the matrix x, which is initially NULL
#'setinverse' will set minverse with the REAL inverse matrix. Differently from the
#example given in the assignement where we can set any value.

makeCacheMatrix <- function(x = matrix()) {
    minverse <- NULL
    
    set <- function(y = matrix()) {
        x <<- y
        minverse <<- NULL
    }
    get <- function() x
    getinverse <- function() minverse
    setinverse <- function() {
        minverse <<- solve(x)       
    }
    
    list(set = set, get = get, getinverse = getinverse, setinverse = setinverse)
}

#in this function we'll verify if the inverse was already calculated
#if yes, then we just return the inverse
#if not, then we'll calculate and return it.

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    
    if(!is.null(m)) {
        message("already inversed!")
        return(m)
    }
    
    x$setinverse()
    x$getinverse()
}
