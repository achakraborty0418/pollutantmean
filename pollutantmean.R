pollutantmean<-function(directory,pollutant,id=1:332){
  #x<-getwd()
  #print(x)
  #setwd(directory)
  #y<-dir()
  #y
  total<-0
  count<-0
  #print(paste("a","b"))
  for (i in id){
    #print(i)
    
    if(i < 10){
      x<- paste("00" , as.character(i),sep="")
    }
    else if(i < 100){
      x<- paste("0" , as.character(i),sep="")
    }  
    else
    {
      x<- as.character(i)
    }
    x<-paste(x,".csv",sep="")
    data<-read.csv(x)
    #print(data)
    m[i]<-sum(data[[pollutant]],na.rm=TRUE)
    r=colSums(!is.na(data))
    
    #print(r[[pollutant]])
    #r<-count(data[[pollutant]],na.rm=TRUE)
    #print(m[i])
   total<-total+m[i]
   #r<-nrow(data[[pollutant]],na.rm=TRUE)
   count<-count+r 
  }
  
  #print(count)
  Total_mean<-total/count
  print(Total_mean)
}    



