complete <- function(directory, id = 1:332) {
  files_list<-list.files(directory,full.names=TRUE)
  nobs <- 1:length(id)
  for (i in 1:length(id))
  {dat <- read.csv(files_list[id[i]])
   x=0
   for (j in 1:length(dat[,"Date"])) 
   {if (is.na(dat[j,"nitrate"])==FALSE && is.na(dat[j,"sulfate"])==FALSE) 
   {x <- x+1}
   nobs[i] <- x
   }
  }
  output <- data.frame(id=id,nobs=nobs)
  output <- as.data.frame(output) 
}
