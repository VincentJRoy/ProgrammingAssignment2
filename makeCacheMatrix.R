makeCacheMatrix <- function(x = matrix()) {
      
    ## creates a special matrix object that can cache its inverse. 
    ## create default and set the square matrix
    ## check inverse matrix to if exist, else set new inverse matrix
    ## get inverse matrix and list functions 
       m <- NULL      
       set <- function(y) {
         x <<- y
         m <<- NULL
       }
       get <- function() x         
       setinverse <- function(solve) m <<- solve  #m <<- solve(x) %*% x
       getinverse <- function() m
       list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
       
    }
##--------------------Assign2------------------------------------------------------------
##Matrix inversion is usually a costly computation and there may be some benefit to 
##caching the inverse of a matrix rather than computing it repeatedly (there are also 
##alternatives to matrix inversion that we will not discuss here). Your assignment 
##is to write a pair of functions that cache the inverse of a matrix.
##Write the following functions:
##makeCacheMatrix: This function creates a special "matrix" object that can cache 
##its inverse.
##cacheSolve: This function computes the inverse of the special "matrix" returned by 
##makeCacheMatrix above. If the inverse has already been calculated (and the matrix 
##has not changed), then cacheSolve should retrieve the inverse from the cache.
##Computing the inverse of a square matrix can be done with the solve function in R. 
##For example, if X is a square invertible matrix, then solve(X) returns its inverse.