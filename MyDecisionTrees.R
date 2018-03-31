
#gender = c('Male','Female','Male','Female')
#play = c('NotPlay','Play','Play','NotPlay')
#(student = data.frame(gender,play))
#roll = c('S1','S2','S3','S4')
#row.names(student) <- roll  
#student

#Data
#Students : Gender - (Male and Female) Play Sports
rollno = paste('S',1:30,sep='')
rollno

set.seed(1)
gender = sample(x=c('Male','Female'), size = 30, replace = T, prob=c(0.5, 0.5))
gender

table(gender)

set.seed(1)
play = sample(x=c('Play','NotPlay'),size = 30, replace = T, prob=c(0.5, 0.5) )
play

students = data.frame(gender,play)
rownames(students) = rollno
table(students)
prop.table(table(students))


#Model1
library(rpart)
?rpart
fit1 = rpart(play ~ gender, data = students)


library(rpart.plot)
rpart.plot(fit1, main='Classification Tree', nn=T)

