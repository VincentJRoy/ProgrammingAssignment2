
cacheSolve <- function(x) makeCacheMatrix(), ...) {
  ## Return a matrix that is the inverse of 'x'
  ##computes the inverse of the special "matrix" returned by
  ##function makeCacheMatrix(). If the inverse has already been calculated
  ##if matrix has not changed, then retrieve the inverse from the cache
  ##iffunction doesn't find the inverse in cached data, the inverse is calculated
  ## finally, this 'new' inverse is set in the cache
  
        m <- x$getinverse()
          if(!is.null(m))   
            message("getting cached data")
            return(m)
          
         
        data <- x$getinverse()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
  
