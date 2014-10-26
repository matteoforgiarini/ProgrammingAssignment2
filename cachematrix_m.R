## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinv <- function(y) {b=solve(y) 
    print(b)                       
    i <<- b }
    #print(x)
    #print(i)
    #print(b)
    #print(i%*%x)
    #print(b%*%x)
    getinv <- function() i
    #return(x%*%s)
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
    }
amatrix = makeCacheMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2))
amatrix$get()
amatrix=makeCacheMatrix(matrix(c(100000,5,3,99), 2,2))

test = function(x,y) {
    z=x*y
    set = function(y) {
        a = y
    }
print(z,a)
}
    
test(2,3)
x
a
y
    
## Write a short comment describing this function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getinv()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinv(i)
    i
}

amatrix=makeCacheMatrix(matrix(c(100000,2,3,99), 2,2))
amatrix$get()
cacheSolve(matrix(c(1,2,3,4), 2,2))

i
b
b%*%x
x

a= matrix(rnorm(4,10,1), 2,2)
a
b=solve(a)
b
b*a
b%*%a

