



Boys<-read.csv("./data/bbabyname.csv")
Girls<-read.csv("./data/gbaby.csv")

Process <-function(Gender,year)
{
  if (Gender=="Boy")
  {
    data<-Boys
   
 NewData<-with(data,subset(data, Year==year& Rank %in% c(1:10),Value==Value,Name==Name))
  
  barplot(NewData$Value,col=rainbow(20),ylim=c(0,30000),names.arg=NewData$Name,
          main="TOP 10 Baby Name",col.main="Red",
          xlab="Baby Name",ylab="Number of Boys",col.lab="blue") 
  }
  if (Gender=="Girl")
    
  {
    data<-Girls
    
   NewData<-with(data,subset(data, Year==year& Rank %in% c(1:10),Value==Value,Name==Name))
    
  barplot(NewData$Value,col=rainbow(20),ylim=c(0,30000),names.arg=NewData$Name,
            main="TOP 10 Baby Name",col.main="Red",
         xlab="Baby Name",ylab="Number of Girls",col.lab="Red") 
           
  }


}






 






