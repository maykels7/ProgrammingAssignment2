## The goal of my functions is to make a matrix, calculate its inverse and then cache the inverse. If the inverse of the same matrix is calculcated again, the result is obtained from the cache and not calculated a second time.

## This function takes a matrix as an argument. It makes sure that nothing is assigned to 'i'. There are 4 functions within this funtion that set and get the matrix then set and get the inverse. Those fucnitons are placd in a list so that they can be called indicidualy from that list later on.

makeCacheMatrix <- function(x = matrix()) {
       i <- NULL
       setmatrix <- function() {
              x <<- y
              i <<- NULL
       }
       getmatrix <- function() x
       seti <- function(inverse) i <<- inverse
       getinverse <- function() i
       l <<- list(setmatrix = setmatrix, getmatrix = getmatrix, seti = seti, getinverse = getinverse)
}

## This function obtains the inverse of the matrix in the argument. If there is a value already assigned it reuturns a message then the inverse already recorded in the cache. Otherwise, using the functions from the list made in the first function, it makes a new matrix, calculates its inverse and assigns it to 'i'. The funciton then sets then caches the new inverse and prints it out.

cacheSolve <- function(x, ...) {
       i <- l$getinverse()
       if(!is.null(i)) {
              message("getting chached data")
              return(i)
       }
       new_matrix <- l$getmatrix()
       i <- solve(new_matrix)
       l$seti(i)
       i
}

m <- matrix(c(4, 4, 7, 6), ncol = 2)
makeCacheMatrix(m)
cacheSolve(m)