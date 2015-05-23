## The following functions are used to cache the inverse of a matrix
## For Coursera Programming Assignment 2: Lexical Scoping 

## makeCacheMatrix creates a list containing a function to
## set the value of the matrix
## get the value of the matrix
## set the inverse of the matrix
## get the inverse of matrix


makeCacheMatrix <- function(x = matrix()) {
inv <<- NULL
set <- function(y) {
	x <<- y
	inv <<- NULL
}

get <- function() x
setinverse <- function(inverse) inv <<- inverse
getinverse <- function() inv
list(set = set,
	get = get,
	setinverse = setinverse,
	getinverse = getinverse)

}


## The following function returns the inverse of the matrix
## It first checks if the inverse has already been computed
## If so, it gets results and skips the computation.
## If not, it computes the inverse, sets the value in the cache 
## via setinverse function


cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
	inv <- x$getinverse()
	if(!is.null(inv)) {
		message ("getting cached data")
		return (inv)
	}

	data <- x$get()
	inv <- solve(data)
	x$setinverse(inv)
	inv

}
