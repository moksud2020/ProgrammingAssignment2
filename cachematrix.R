## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a special "matrix" object that can cache its inverse.
## The following function will create and store a matrix.

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL   ## M initialize with NULL
  set <- function(y){  ## Define set funtion 
    x <<- y           ## <<- operator used to assign a value to x in the environment
    m <<- NULL       
  }
  get <- function()x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
  
}


## Write a short comment describing this function

## This following function will inverse the matrix created by above function makeCacheMatrix.
## If it is already been calculated then it will retrieve from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()  ## Se
  if(!is.null(m)){
    message("Cashing data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setInverse(m)
  m
}
