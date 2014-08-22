## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    invert_m <<- NULL
    set <- function(y) {
        x <<- y
        invert_m <<- NULL
    }
    get <-function() { x }
    setInvertedMatrix <- function(invert_matrix) {invert_m <<- invert_matrix}
    getInvertedMatrix <- function() {invert_m}
    list(set = set, get =get,
         setInvertedMatrix = setInvertedMatrix,
         getInvertedMatrix = getInvertedMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	    inverted_m <- x$getInvertedMatrix()
    if(!is.null(inverted_m)) {
        message("getting cached data")
        return(inverted_m)
    }
    data <- x$get()
    inverted_m <- solve(data)
    x$setInvertedMatrix(inverted_m)
    inverted_m
}
