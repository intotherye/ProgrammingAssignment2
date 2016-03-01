## Put comments here that give an overall description of what your
## functions do

## return a list of functions to 1) set the matrix; 2) get the matrix; 3) set the inverse; and 4) get the inverse
## this list to be used as an input to casheSolve()

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get = function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list (set=set, get=get, setinverse = setinverse, getinverse = getinverse)
}


## return the inverse of the input matrix 

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        
        if (!is.null(i)) {
                return(i)
        }
        ## Return a matrix that is the inverse of 'x'
        
        input_mat <- x$get()
        i <- solve(input_mat, ...)
        x$setinverse(i)
        print(i)
}
