## These functions would check the data in matrix cache and if it is not null
## then it would return the value 

## This would make matrix from Cache and if it is not null then would set the value. 

makeCacheMatrix <- function(x = matrix()) {
 inverseMat <- matrix()
  st <- function(y){
     x <<- y
     inverseMat <- matrix()
  } 
  get <- function() x 
  setInverse <- function(inverse) inverseMat <<- inverse 
  getInverse <- function() inverseMat 
  
}


## This function returns the inverse Matrix.

cacheSolve <- function(x, ...) {
     m <- x$getInverse() 
     if(!is.null(m)){
       message('getting cached data')
       return(m)
     }
     data <- x$get()
     m <- solve(data) 
     x$setInverse(m)
     m
     
        ## Return a matrix that is the inverse of 'x'
}
