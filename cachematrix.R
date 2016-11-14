##The makeCacheMatrix function creates a special matrix object
##and can cache its inverse. It also returns a list of functions:
##set, get, setinverse, getinverse.

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
##The cacheSolve function computes the inverse of the matrix
##created by function makeCacheMatrix. First, it checks if the 
##inverse has already been calculated and will skip any 
##computation if it has.

cacheSolve <- function (x, ...) {
        m <- x()
                message(getting cached data)
                return(m)
        }
        data <- x()
        m <- solve(data, ...)
        x(m)
        m
}

