makeCacheMatrix <- function(x = matrix()) {
      
    ## creates a special matrix object that can cache its inverse. 
    ## create default and set the square matrix
    ## check inverse matrix to if exist, else set new inverse matrix
    ## get inverse matrix and list functions 
           m <- NULL     
           set <- function(y) {
               x <<- y
               m <<- NULL  #avail to cacheSove
           }
           get <- function() x         
           setinverse <- function(solve) m <<- solve  ##m now inverse of original m 
           getinverse <- function() m      
           list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
    #list of arguments to pass to cacheSolve() function
}
   

cacheSolve <- function(x, ...)  {
  
  ## Returns a matrix that is the inverse of 'x'
  ## Computes the inverse of the matrix returned by
  ## Function makeCacheMatrix(). If the inverse has already been calculated
  ##and matrix has not changed, then cacheSolve will retrieve the inverse from
  ##the cache, if not found in the cache the inverse is calculated
  ## finally, this 'new' inverse is set in the cache.
  
      m <- x$getinverse                     ##get inverse
      if (!is.null(m)) {
        #test not NULL
        message("getting cached data")
      return(m)                             ##return matrix from cache and stop
      }
      dat <- x$get                          ##retreive inverse from cache
      m   <- solve(dat, ...)                   #calculate inverse
      x$setinverse(m)                       ##set cache
  
  m                                         ##return matrix
}
