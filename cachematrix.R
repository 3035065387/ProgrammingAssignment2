## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL  set <- function(matrix) {    m <<- matrix    inv <<- NULL  }  get <- function() m  setInverse <- function(inverse) inv <<- inverse  getInverse <- function() inv    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	inv <- cache$getInverse()
	if (!is.null(inv)) {
		message("getting cached data")
		return(inv)  }
  data <- cache$get()  inv <- solve(data)  cache$setInverse(inv)  inv
}
