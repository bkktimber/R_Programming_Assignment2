## Assignment 2 : Lexical Scoping
## This function cache a inverse of any matrix

## this part makes a list of matrix and its inverse for retrive in later part.

makeCacheMatrix <- function(x <- matrix()) {
  temp <- NULL
  
  get_matrix <- function() x
  
  set_inv    <- function(inv){
      temp <<- inv   
      ## <<- operator is very very important! take me 2hr+ to figure it out :'( 
  }
  
  get_inv    <- function() temp
  
  list(get_matrix <- get_matrix,
       set_inv <- set_inv,
       get_inv <- get_inv)
  
}

## This part cache and return the invert matrix

cacheSolve <- function(x) {
  temp <- x$get_inv()
  
## Check if the inverse is already calculated. 
  
  if(!is.null(temp)) {
    message("getting cached data")
    return(temp)
    
  }
  
  temp_matrix <- x$get_matrix()
  
  temp <- solve(temp_matrix)
  x$set_inv(temp)
  temp
}
