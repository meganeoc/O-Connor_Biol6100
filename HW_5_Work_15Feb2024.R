n_dims <-sample(3:10, 1)

myvec <- 1:(n_dims^2)
print(myvec)

sample(myvec)

myMat <- matrix(data=myvec,nrow=6)
print(myMat)



t(myMat)
print(myMat)
# reordered so the numbers are going from left to right rather than vertical

eigen(myMat)
# an Eigenvalue tells us about variance in the data. Each eigenvalue tells us how spread out the data is from one another. Every data point has an eigenvector (which is why there are 16 for my matrix) and those are where the eigenvalue comes from. 

EigMat <- eigen(myMat)
typeof(EigMat)
# these values are a "list"

##################### QUESTION 2 ###################
set.seed(111)
my_matrix <- matrix(runif(16), nrow=4)
print(my_matrix)

my_logical <- runif(100)>0.5
print(my_logical)
typeof(my_logical)

my_letters <- sample(letters[1:26])
print(my_letters)
typeof(my_letters)

# create a new list, which has the element[2,2] from the matrix, the second element of the logical vector, and the second element of the letters vector.
myList <- list(my_matrix[2,2],my_logical[[2]],my_letters[[2]])
print(myList)

# use the typeof() function to confirm the underlying data types of each component in this list
typeof(myList[[1]])
typeof(myList[[2]])
typeof(myList[[3]])

# combine the underlying elements from the new list into a single atomic vector with the c() function.
CombList <- c(myList[[1]],myList[[2]],myList[[3]])
print(CombList)

# what is the data type of this vector?
typeof(CombList) 
# CHARACTER

###################### QUESTION 3 ####################
set.seed(333)
my_unis <-runif(26,min=0,max=10)
print(my_unis)
my_letters <- sample(LETTERS[1:26])
print(my_letters)

dFrame <- data.frame(my_unis,my_letters,stringsAsFactors=FALSE)
print(dFrame)
str(dFrame)
head(dFrame)

dFrame[sample(1:26,4),1] <- "NA"
print(dFrame)
is.na(dFrame[[1]])

dFrame <- dFrame[order(dFrame$my_letters),]
print(dFrame)


mean(dFrame$my_unis, na.rm = TRUE)
