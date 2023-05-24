corr<-function(directory,threshold=0){
  
    data<-read.csv(directory) 
    c<-cor(data$sulfate,data$nitrate,use="complete.obs")
     #head(c)
  
}