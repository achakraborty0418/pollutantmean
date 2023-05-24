complete<-function(directory,id=1:332){
  #count<-0
  for (i in id){
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
    d<-data[complete.cases(data), ]
    
    #if (d<-"True"){
      #count<-count+1
    #}
    #print(d)
  Total_complete_cases<-nrow(d)
  #print(Total_complete_cases)
  
  file.data<-data.frame( "id"=x,Total_complete_cases)
  print(file.data)
  }
}