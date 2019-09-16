## Programming in R - Week 3 - Assignment 2
## Philipp Herrmann - September 2019

## This function creates a special matrix to cache its inverse

makeCacheMatrix <- function(a = matrix())  {

	InvMat <- NULL
	set <- function(b)    					 {
	a <<- b
	InvMatrix <<- NULL
											}
	get <- function()  a
	setInvMat <- function(inverse)  InvMat <<- inverse
	getInvMat <- function() InvMat
	list(	set = set,
			get = get,
			setInvMat = setInvMat,
			getInvMat = getInvMat	)
											}

## The function in the following section computes the inverse 
## of the secial matrix returned by the above function							
											
cacheSolve <- function(a, ... ) 			{
	
	InvMat <- s$getInvMat()
	if (!is.null(InvMat))					{
	print("Get cached Data")
	return(InvMat)			
		
											}
	Mat <- a$get()
	InvMat <- solve(Mat, ... )
	a$setInvMat(InvMat)
	InvMat		
	
											}	
