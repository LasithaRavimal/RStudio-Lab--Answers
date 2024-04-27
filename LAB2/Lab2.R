# Lasitha Ravimal-SLIIT-2Y2Sem-P&S-Lab2


#Find the current directory
getwd()


#set path
setwd("C:\\Users\\USER\\Desktop\\pslab\\LAB2")
#Find the current directory
getwd()

##Control Statement

       #if

x<-4   #Asigin value for x

x
if(x>0){
  print("Positive Number")

}

        #if else
x<-7       #Asigin value for x
y<-(-2)    #Asigin value for y

x
y
if(x>0){
  print("Positive Number")
  
}else{
  print("negative Number")
}

if(y>0){
  print("Positive Number")
  
}else{
  print("negative Number")
}

    #nested if
x<-0
if(x>0){
  print("positive number")
}else if(x<0){
  print("Negative Number")
}else{
  print("Zero")
}

  #while loop

i<-0

while(i<8){
  print(i)
  i=i+1
}
     #for loop
7:9  #range
for(i in 1:10){
  print(i)
}


   #control statements
###CSV and text file
data1<-read.csv("DATA 2.csv")
fix("data1")

data1


data2<-read.table("DATA 2.txt",header=TRUE,sep =",")
data2
fix("data2")


index<-c(1,2,3)
Name<-c("Kamal","Nimal","Sunil")
marks<-c(23,25,34)

dataframe<-data.frame(index,Name,marks)
dataframe

write.csv(dataframe,"dataframe1.csv")
write.table(dataframe,"dataframe2.txt")

####functions########

function_01<-function(a,b){
  y<-a+b
  print(y)
}

#calling the function
function_01(4,6)


      #q-01
quadRoots<-function(a,b,c){
  x1=(-b+sqrt(b^2-4*a*c))/2*a
  x2=(-b-sqrt(b^2-4*a*c))/2*a
  print(x1)
  print(x2)
}
quadRoots(2,3,1)


#real roots for quadratic equation 2x^2+3x=1=0

                        #q04
#1:K
#k=20
vec1<-c(1:20) #3,6,9,12,15,18
sum(vec1%%3==0)

                       #06
 data3<-c(24,67,45,23)
 max<-0
 maxIndex<-0
 
 for(i in 1:length(data3)){
   if(max<-data3[i]){
     max-data3[i]
     maxIndex<-i
   }
   
 }
 maxIndex

               #Q07
 which.max(data3)
              #Q07
 
 A<-0
 moneyowed<-function(P,R,n){
   for(i in 1:n){
     A=P*((1+(R/100))^i)
     print(A)
   }
 }
 
moneyowed(5000,11.5,15) 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


















