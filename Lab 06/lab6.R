getwd()
setwd("C:\\Users\\USER\\Desktop\\pslab\\Lab 06")

#Q1   import data set

data1<-read.table("Forest.txt",header=TRUE,sep=",")
data1
fix(data1)
attach(data1)

 #2  get the summury of the data set

str(data1)

 #Q3 ho many obesarvation

517 obesarvation


  #Q4
max(wind)
min(wind)


 #Q5-five number summary
summary(temp)
  
  #Q6-how many outliers wind
boxplot(wind,horizontal=TRUE,outline=TRUE,pch=4)
3 outliers

 #Q7
negative distribution

#Q8
median(temp)

#Q9

mean(wind)

#standard varion
sd(wind)

   #Q10
IQR(wind)

#Q11-2 way frequancy table

freq<-table(day,month)

freq
#12-average

mean(temp[month=="sep"])

#q13
count<-table(day[month=="jul"])
names(count[count==max(count)])




















