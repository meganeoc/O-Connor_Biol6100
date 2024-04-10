# Homework 9: Structured Programming
# 27 March 2024
# MOC

# Step 1: Generate a Fake Dataset 
GenDataFunc <- function(){
  MySet <- rnorm(n=3000, mean=5.676607)
  MySet <- data.frame(1:3000,MySet)
  names(MySet) <- list("ID","myVar")
  MySet[MySet$myVar>0,] # subset back to myset
  str(MySet)
  return(MySet)
}


# Step 2: Generate Relevant Summary Statistics
SummaryFunc <- function(GenDataFunc){
  MySet <- GenDataFunc()
  print(summary(MySet))
}

# Step 3 Conduct a Statistical Test
ANOVAFunc <- function() {
  nGroup <- 2 # Number of Treatments
  nName <- c("SteadyState","Rest") # Group Name
  nSize <- c(35,58) # Observations per group
  nMean <- c(9,842, 2.8551) # Group Means
  nSD <- c(4.36269,4.36269) # Group SDs
  ID <- 1:(sum(nSize)) # id vector for each row
  resVar <- c(rnorm(n=nSize[1],mean=nMean[1],sd=nSD[1]),
              (rnorm(n=nSize[2],mean=nMean[2],sd=nSD[2])))
  TGroup <- rep(nName,nSize)
  ANOdata <- data.frame(TGroup, resVar) 
  ANOmodel <- aov(resVar~TGroup,data=ANOdata)
  print(ANOmodel)
  print(summary(ANOmodel))
  z <- summary(ANOmodel)
  str(z)
  aggregate(resVar~TGroup,data=ANOdata,FUN=mean)
  unlist(z)
  unlist(z)[7]
  ANOsum <- list(Fval=unlist(z)[7],probF=unlist(z)[9])
  return(list(ANOdata = ANOdata, ANOsum = ANOsum))

}
# Step 4: Plot Your Data
PlotFunc <- function(ANOdata){
  ANOPlot <- ggplot(data=ANOdata,aes(x=TGroup,y=resVar,fill=TGroup)) +
    geom_boxplot()
  print(ANOPlot)
}

############ Modifying the Functions with a New Dataset #################
# Step 1: Generate a Fake Dataset 
NewDataFunc <- function(){
  MySet <- rnorm(n=6000, mean=10)
  MySet <- data.frame(1:3000,MySet)
  names(MySet) <- list("ID","myVar")
  MySet[MySet$myVar>0,]
  str(MySet)
  return(MySet)
}

# Step 2: Generate Relevant Summary Statistics
SummaryFunc <- function(GenDataFunc){
  MySet <- GenDataFunc()
  print(summary(MySet$myVar))
}

ANOVAFunc <- function(GenDataFunc) {
  nGroup <- 2 # Number of Treatments
  nName <- c("SteadyState","Rest") # Group Name
  nSize <- c(35,58) # Observations per group
  nMean <- c(9,842, 2.8551) # Group Means
  nSD <- c(4.36269,4.36269) # Group SDs
  ID <- 1:(sum(nSize)) # id vector for each row
  resVar <- c(rnorm(n=nSize[1],mean=nMean[1],sd=nSD[1]),
              (rnorm(n=nSize[2],mean=nMean[2],sd=nSD[2])))
  TGroup <- rep(nName,nSize)
  ANOdata <- data.frame(TGroup, resVar) 
  ANOmodel <- aov(resVar~TGroup,data=ANOdata)
  print(ANOmodel)
  print(summary(ANOmodel))
  z <- summary(ANOmodel)
  str(z)
  aggregate(resVar~TGroup,data=ANOdata,FUN=mean)
  unlist(z)
  unlist(z)[7]
  ANOsum <- list(Fval=unlist(z)[7],probF=unlist(z)[9])
  ANOsum
}

# Step 4: Plot Your Data
PlotFunc <- function(ANOVAFunc){
  ANOdata <- ANOVAFunc()$ANOdata
  TGroup <- ANOVAFunc()$TGroup
  resVar <- ANOVAFunc()$resVar
  ANOPlot <- ggplot(data=ANOdata,aes(x=TGroup,y=resVar,fill=TGroup)) +
    geom_boxplot()
  print(ANOPlot)
}

