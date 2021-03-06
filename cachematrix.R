## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	set <- function(y) {
		x <<- y
		inverse <<- NULL
	}
	get <- function() x
	setINVERSE <- function(inv) inverse <<- inv
	getINVERSE <- function() inverse
	list(set = set, get = get, setINVERSE = setINVERSE, getINVERSE = getINVERSE)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getINVERSE()
        if (!is.null(inverse)) {
        	message("getting cached data")
        	return(inverse)
        }
        matrix <- x$get()
        inverse <- solve(matrix, ...)
        x$setINVERSE(inverse)
        inverse
}
