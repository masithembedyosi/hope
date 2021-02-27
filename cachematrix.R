# hope
##the first function, its create a vector of makeCacheMatrix function 
##set the value of the vector and get the value of the vector
##set the value of the inverse and get the value of inverse

makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
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

##From the first function of makeCacheMatrix function, the cacheSolve function will calculate the inverse 
##The calcheSolve will use getInverse to find the inverse and not compute if it calculated before 
##Thus the inverse mean  will be printed 

cacheSolve <- function(x, ...) {
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
