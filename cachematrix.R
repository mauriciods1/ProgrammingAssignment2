## Put comments here that give an overall description of what your
## functions do

## it's very similar with the example gave in assignement

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

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    
    if(!is.null(m)) {
        message("already inversed!")
        return(m)
    }
    
    x$setinverse()
    x$getinverse()
}
