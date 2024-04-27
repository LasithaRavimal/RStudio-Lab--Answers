#Lasitha Ravimal-SLIIT-Y2S-LAB4


setwd("C:\\Users\\USER\\Desktop\\pslab\\Lab 04")


#importing
 data<-read.table("DATA 4.txt",header=TRUE,sep="")
 data
 fix(data)
 
 #data editor view
 fix(data)
 
 
 #renaming columns 
 names(data) <- c("Team", "Attendance", "Salary", "Years")
 
 data
 
 #accessing variables or columns directly without calling whole dataset
 attach(data)

 # Create boxplot
 boxplot(Attendance,main="Boxplot for Attendance", outline = TRUE, xlab="Attendance", horizontal = TRUE)
 boxplot(Salary,main="Boxplot for Salary", outline = TRUE, xlab="Salary", horizontal = TRUE)
 boxplot(Years,main="Boxplot for Years", outline = TRUE, xlab="Years", horizontal = TRUE)
 
 #histrogram
 hist(Attendance,main="Histrogram for Attendance",ylab="Frequency")
 abline(h=0)
 hist(Salary,main="Histrogram for Salary",ylab="Frequency")
 hist(Years,main="Histrogram for Years",ylab="Frequency")
 
 
 
 
 #steam-leaf
 stem(Attendance)
 stem(Salary)
 stem(Years)
 
 
 #mean
 mean(Attendance)
 mean(Salary)
 mean(Years)
 
 
 #median
 
 median(Attendance)
 median(Salary)
 median(Years)
 
 #Standard Deviation
 sd(Attendance)
 sd(Salary)
 sd(Years)
 
 #summary of all quantile value
 summary(Attendance)
 summary(Salary)
 summary(Years)
 
 #quantile value
 quantile(Attendance)
 
 quantile(Attendance)[2]
 
 #inter quartile range
 IQR(Attendance)
 IQR(Salary)
 IQR(Years)
                             #Q3
 #function that accept argument years and give the mode
 get.modes<-function(y){
   counts<-table(y)
   names(counts)[counts==max(counts)]
 }
 
 get.modes(Years)
                               #Q4
 
 get.outliers<-function(z){
   q1<-quantile(z)[2]
   q3<-quantile(z)[4]
   iqr<-q3-q1
   ub<-q3+1.5*iqr
   lb<-q1-1.5*iqr
   print(paste("upper bound",ub))
   print(paste("upper bound",lb))
   print(paste("outliers",paste(sort(z[z<lb|z>ub]),collapse=",")))
 }
 
 get.outliers(Years)
 get.outliers(Salary)
 get.outliers(Attendance)
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 