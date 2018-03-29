# Data Structures in R

#Vectors----
v1 = c('A','B','C')
v1
class(v1)
(v2 = c(1,2,3))
class(v2)
(v3 = c(TRUE, FALSE, TRUE))
class(v3)
v3a = c(T, F, T)
class(v3a)
(v4 = 100:200)
v4[c(1,3,4)]
v1[c(2)]
length(v4)
v4[-c(1,3,4)]
length(v4)
v4[v4==150]
v7 = c('A','C')
v1[v1 %in% v7]
v1['A']
v1[1]

(v8 = 10:15)
names(v8) = c('anish','shlok','jaimin','bhavya','nihali','harsh')
v8['shlok']
v8[2]
v8

v8[c('shlok','jaimin')]

df = data.frame(rollno=c(1,2,3), name=c('Rohit','Lalit','Hitesh'), 
                course = c('MBA','BBA','MCA'),dept=c('Dept1','Dept2','Dept3'), 
                marks=floor(runif(3,50,100)))

#?runif
#?data.frame
#df = fix(df)
df
str(df)
class(df)
summary(df)

#?ls
ls()
rm(list=ls())

v4

(mylist1 = list(1, df, v4))

?matrix
(mymatrix = matrix(1:24,ncol=4))
(mymatrix = matrix(1:24,ncol=4,byrow=TRUE))

mymatrix[,1]
mymatrix[1,]

mymatrix[2:4,3:4]
mymatrix[5,1]
mymatrix

dimnames(mymatrix) = list(c('R1','R2','R3','R4','R5','R6'), 
                          c(paste('C',1:4,sep='')))
mymatrix
?paste

paste('R',1:6,sep='_')

(myarray = array(101:124, dim=c(4,3,2)))

(myarray = array(101:124, dim=c(2,3,4)))

(myarray = array(101:124, dim=c(3,2,4)))

mymatrix[1,2]='a'
mymatrix


df
df = fix(df)
df
df$course
df$name
df$gender = c('M','M','M')
df

df$gender = factor(df$gender)
str(df)
df$grades = c('A','B','C','A')
df
str(df)

df$grades = factor(df$grades, ordered=T)
str(df)

df$grades = factor(df$grades, ordered=T, levels=c('C','B','A'))
df$grades
str(df)

table(df$course, df$gender)

mymatrix
apply(mymatrix, 1, sum)
apply(mymatrix, 2, sum)
apply(myarray, 3, sum)
apply(myarray, 1, sd)

?apply

?tapply

tapply(df$marks, df$course, sum)

tapply(df$marks, df$dept, mean)

df$course = NULL
df

df[df$dept == 'Dept1',]
df[df$marks >= 80,]
df
