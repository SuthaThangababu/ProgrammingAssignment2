## Functions to compute the matrix inversion

## Function to get and set the value of matrix & get and set the value of the inversion of that matrix


 makeCacheMatrix <- function(x = matrix) {
   
   a <- NULL
   set <- function(y) {
     x <<- y
     a <<- NULL
   }
   get <- function() x
   setmyinverse <- function(inverse) a <<- inverse
   getmyinverse <- function() a
   list(set = set, get = get,
        setmyinverse = setmyinverse,
        getmyinverse = getmyinverse)
   
 }
 
 
 ## Function to compute the inversion and to get the value of inversion from the cache if it was already calculated.
 cacheSolve <- function(x, ...) {
      
        a <- x$getmyinverse()
        if(!is.null(a)) {
            message("getting cached data")
            return(a)
          }
        data <- x$get()
        a <- solve(data, ...)
        x$setmyinverse(a)
        a
  
       }
