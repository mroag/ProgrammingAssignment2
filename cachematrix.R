## Put comments here that give an overall description of what your
## functions do

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix()) {
      i<-NULL
      #I apply the same procedure as the example replacing the function mean() for inverse() and numeric() for matrix()
      set<-function(matrix){
            m<<-matrix
            i<<-NULL
      }
      get<-function(){
            m}
      setinv<-function(inverse){
            i<<-inverse}
      getinv<-function(){
            i}
      list(set=set,get=get,
           setinv=setinv,
           getinv=getinv)
}


## Write a short comment describing this function
##I follow as well the same method replacing functions to get the result
cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      m <- x$getinv()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data)%*%data
      x$setinv(m)
      m
}