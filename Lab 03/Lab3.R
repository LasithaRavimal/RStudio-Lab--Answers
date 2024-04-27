  #Lasitha Ravimal_SLIIT-LAB3

 setwd("C:\\Users\\USER\\Desktop\\pslab\\Lab 03")
 getwd()
 
 #import database
 data<-read.csv("DATA 3.csv",header=TRUE)
 data
 
 #get data in the editor mode
 
 fix(data)
 
 #rename the columns
 
 names(data)<-c("Age","Gender","Accomadation")
 fix(data)
 
 
 #rename categorical data
 data$Gender<-factor(data$Gender,c(1,2),c("Male","Female"))
 fix(data)
 
 
 data$Accomadation<-factor(data$Accomadation,c(1,2,3),c("Home","Borded","Lodging"))
  fix(data)                          
  
  attach(data)
  #frequency table
  
  gender.freq<-table(Gender)
  acc.freq<-table(Accomadation)
  gender.freq
  acc.freq
  
  #Pie chart
  
  pie(gender.freq,"pie chart for Gender")
  pie(acc.freq,"Pie chart for accomodation")
  
  
  #barplot
  barplot(gender.freq,main="bar plot for Gender",ylab="Frequency")
  abline(h=0)
  
  
  barplot(acc.freq,main="bar plot for Accomadation",ylab="Frequency")
  abline(h=0)
  
  
  #boxplot
  boxplot(Age,main="Boxplot for Age",ylab="Age",outpch=5)
  
  
  #Q3
  #Two-Way Frequeancy table
  gender_acc.freq<-table(Gender,Accomadation)
  gender_acc.freq
  
  #Stack bar chart
  barplot(gender_acc.freq,main="Gender & accomadation",legend=rownames(gender_acc.freq))
  abline(h=0)
  
  
  #clustered bar charts
  barplot(gender_acc.freq,beside=TRUE,main="Gender & Accomadation",legend=rownames(gender_acc.freq))
  abline(h=0)
  
  
  #Q4
  #side by sise boxplot
  boxplot(Age~Gender,main="Boxplot for age by gender",xlab="Gender",ylab="Age")
  boxplot(Age~Accomadation,main="Boxplot for age by Accomadation",xlab="Accomadation",ylab="Age",outpch=6)
  
  #Q5
  xtabs(Age~Gender+Accomadation)/gender_acc.freq
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  