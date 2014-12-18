## Coursera Course R Programming
## Assignment 3
## Author Sam West
## Purpose - write function to take a matrix and store it as an object which 
##           can stored to later cache the inverse of the matrix
##


## Create object to store a matrix and it's inverse

makeCacheMatrix <- function(inputMatrix = matrix()) {
  inverseMatrix = NULL
  set <- function(initInput) {
    inputMatrix <<- initInput
    inverseMatrix <<- NULL
  }
  get <- function() inputMatrix
  setInverse <- function(solve) inverseMatrix <<- solve
  getInverse <- function() inverseMatrix
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse) 

}


## Takes a matrix object and returns it's inverse. If the matrix has already been cached, then
## this returns a message that the data has been cached and the inverse of the original matrix.

cacheSolve <- function(matrixObj, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inverseMatrix <- matrixObj$getInverse()
  if(!is.null(inverseMatrix)) {
    message("getting cached data")
    return(inverseMatrix)
  }
  data <- matrixObj$get()
  inverseMatrix <- solve(data,...) # ?solve parameters?
  matrixObj$setInverse(inverseMatrix, ...)
  inverseMatrix
}  

  

  
  

