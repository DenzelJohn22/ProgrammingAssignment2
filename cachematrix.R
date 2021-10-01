## The following program will contain a code that will be able to display 
## an assortment of inversible matrices.

## The code written is a pair of functions that will be able to cache the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
a <- NULL
set <- function(s){
x <<- s
a <- NULL
}
get <- function()x
setInverse <- function(inverse)a<<- inverse
getInverse <- function()s
list(set = set, get = get,
     setInverse = setInverse,
     getInverse = getInverse)

}

## This section will show the cached solution for the inversed matrix as the code will and display the desired output

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  a <- x$getInverse()
  if(!is.null(a)){
    message("getting the cached data needed")
    return(a)
  }
  mat <- x$get()
  a <- solve(mat,...)
  x$setInverse(a)
  a
}
