## makeCacheMatrix takes a matrix and caches it as a global variable. It also initializes a global variable y, which is used to later store the inverse.
## Initializing y here, ensures everytime a new matrix is passed, y is invalidated.

## This takes a matrix and caches it as a global variable.

makeCacheMatrix <- function(x = matrix()) {
 y<<- NULL
  if (is.null(x)) {print ("null matrix, no inverse possible")}
  x<<- x

}


##This takes the global variable matrix, x, and calculates the inverse. If y is null, it will solve and print, solving first time, else it will print getting cached value.

cacheSolve <- function(x, ...) {
         if (!is.null(y)) { 
    print ("getting cached value") 
                     print (y)}
  if (is.null(y)) {y<<- solve(x) 
                   print ("solving first time")
                   print (y)}
}
