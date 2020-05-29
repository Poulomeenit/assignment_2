##Caching the inverse of the matrix: Matrix inversion is generally a lengthy and requires 
## more computation, the two functions below will create a matrix and calculate the matrix. 

## Write a short comment describing this function: This creates a special "matrix" that
##can cache its inverse and stores the value

makeCacheMatrix <- function(x = matrix()) {j <- NULL
set <- function(y){
  x <<- y
  j <<- NULL
}
get <- function()x
setInverse <- function(inverse) j <<- inverse
getInverse <- function() j 
list(set = set, get = get, 
     setInverse = setInverse, 
     getInverse = getInverse)


}


## Write a short comment describing this function: This function basically computes the inverse of 
##"matrix" that is created in the former function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
  
  
}
