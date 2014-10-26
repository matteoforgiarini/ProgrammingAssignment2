## Put comments here that give an overall description of what your
## functions do

# this function calculates che inverse of an invertible matrix, caches it and shows it.
# when a new matrix is passed, it checks whether the inverse is already cached. If it does, the inverse is diplayed, otherwise, the inverse is calculated.

## Write a short comment describing this function

## this function creates a list of functions "set, get, setinverse, getinverse" the allow to manipolate a matrix and its inverse.

makeCacheMatrix <- function(x = matrix()) {
    i<- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() {x}
    setinverse <- function(x) {
        i <<-  solve(x)
    }
    getinverse <- function() { i}
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
    }


## Write a short comment describing this function

## this function checks whether the inverse of the input matrix has been already cached. If it does, the the function gets the inverse. if a new matrix has been passed,
## the funciont calculates the inverse matrix.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getin()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
#    i <<- solve(data, ...)
    i <- solve(data, ...)
    x$setinv(data)
    i
}

#amatrix = makeCacheMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2))
#amatrix$get()
#cacheSolve(amatrix)
#amatrix$getinverse()  
#cacheSolve(amatrix)  
#amatrix$set(matrix(c(0,5,99,66), nrow=2, ncol=2)) 
#cacheSolve(amatrix)
#amatrix$get()     
#amatrix$getinverse()
