#Lasitha Ravimal-Lab5


 getwd()
 setwd("C:\\Users\\USER\\Desktop\\pslab\\Lab 05")
 
 #read text file
 data1<-read.table("Data.txt",header=TRUE,sep=",")
 data1
 fix(data1)
 
 #rename the table header
 names(data1)<-c("x1","x2")
 
 attach(data1)
 
 
      #Q1
 hist(x2,main="Histrogram for Number of share holders")
 
       
      #Q2
 
 #Q1
 histrogram<-hist(x2,main="Histrogram for Number of share holders",breaks=seq(130,270,length=8),right=FALSE)
 #n=number of classes
 #lenghth=n+1
                   #Q3
 #1step Identify break points
 breaks<-round(histrogram$breaks)
 breaks
 
 #2step-identify frequencies of each classes
 freq<-histrogram$counts
 freq

 #3 step-identify the mid points of each classese
 mid<-histrogram$mids
 mid 
 
 #create empty vector
 
 classes<-c()
 
 for(i in 1:length(breaks)-1){
   classes[i]<-paste("[",breaks[i],",",breaks[i+1],"]")
 }
 
 cbind(classes=classes,Frequency=freq)
 
 
 #q4
 #draw in the same plot
 lines(histrogram$mid,freq)
 
 #draw innew plot
 plot(mid,freq,type="l",main=" frequency polygon for number of shareholders",xlab="shareholders",ylab="Freqquency",ylim=c(0,max(freq)))
 
 plot(mid,freq,type="o",main=" frequency polygon for number of shareholders",xlab="shareholders",ylab="Freqquency",ylim=c(0,max(freq)))
 
 plot(mid,freq,type="p",main=" frequency polygon for number of shareholders",xlab="shareholders",ylab="Freqquency",ylim=c(0,max(freq)))
 
 
 #q5
 cum.freq<-cumsum(freq)
 cum.freq
                       #empty vector
 new<-c()
 
 for(i in 1:length(breaks)){
   if(i==1){
     new[i]=0
     
   }else{
     new[i]=cum.freq[i-1]
   }
 }
 
 plot(breaks,new,type="o",main=" frequency polygon for number of shareholders",xlab="shareholders",ylab="Cumulative Freqquency",ylim=c(0,max(cum.freq)))
 
 cbind(Uppper=breaks,CumFreq=new)
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 