## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
  # Create a list containing a function to set the value of the matrix, get the value of the matrix,
  # set the value of the inverse of the matrix, and get the value of the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  # Define function to set the value of the matrix and clear the old inverse from the cache
  set <- function(matrix) {
    x <<- matrix
    i <<- NULL
  }
  # Define function to get the value of the matrix
  get <- function() {
    x
  }
  # Define function to set the inverse
  setInverse <- function(inverse) {
    i <<- inverse
  }
  # Define function to get the inverse
  getInverse <- function() {
    i
  }
  # Return a list with the outputs of the above four functions
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Return a matrix that is the inverse of 'x'

## Write a short comment describing this function
  # Calculates the inverse of the vector list created with makeCacheMatrix. It will first check to see if the
  # inverse of the matrix has already been calculated, and if so, gets the inverse from the cache and skips the
  # computation. Otherwise, it will calculate the inverse of the data and set the value of the inverse
  # in the cache.

cacheSolve <- function(x, ...) {
  # Fetch the cached value for the inverse
  i <- x$getInverse()
  if (!is.null(i)) {
    message("getting chached data")
    return(i)
  }
  # calculate the inverse, cache it, and return it
  data <- x$get()
  i <- solve(data,...)
  x$setInverse(i)
  i
}
