## Put comments here that give an overall description of what your
## functions do

##This function gets/sets the value of a matrix, then gets/sets the inversion of the matrix

makeCacheMatrix <- function(x = matrix()) {

			m <- NULL  
            set <- function(y) { 
                    x <<- y
                    m <<- NULL
            }
            get <- function() x 
            setmatrix <- function(solve) m <<- solve 
            getmatrix <- function() m 
            list(set = set, get = get,
                 setmatrix = setmatrix,
                 getmatrix = getmatrix) 
}


## This function checks to see if there's a cached value of m and returns that value, if not it calculates the inversiongit

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		m <- x$getmatrix() ##gets the value of the matrix for x 
            if(!is.null(m)) { ##if a cached matrix exists, returns that value
                    message("getting cached data")
                    return(m)
            }
            matrix <- x$get() 
            m <- solve(matrix, ...) ##inverts the matrix
            x$setmatrix(m) 
            m 
        
}
