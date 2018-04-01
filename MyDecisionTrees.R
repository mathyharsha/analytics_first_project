
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

#----
set.seed(1)
gender = sample(x=c('Male','Female'), size = 30, replace = T, prob=c(0.5, 0.5))
gender

table(gender)

set.seed(2)
play = sample(x=c('Play','NotPlay'),size = 30, replace = T, prob=c(0.5, 0.5) )
play

students = data.frame(gender,play)
rownames(students) = rollno
table(students)
prop.table(table(students))


#Model1
library(rpart)
?rpart
fit1 = rpart(play ~ gender, data = students,minsplit=4,minbucket=2)
fit1

library(rpart.plot)
rpart.plot(fit1, main='Classification Tree', nn=T)

predict(fit1, newdata = data.frame(gender='Female'))
predict(fit1, newdata = data.frame(gender=c('Male','Female','Male')))

#---- 

set.seed(100)
gender = sample(x=c('Male','Female'),size=30, replace=T, prob=c(0.4,0.6))
table(gender)

set.seed(101)
married = sample(x=c('Married','Single'),size=30, replace=T, prob=c(0.3,0.7))
table(married)

set.seed(102)
play = sample(x=c('Play','NotPlay'),size=30, replace=T, prob=c(0.5,0.5))
table(play)
addmargins(table(play) ,FUN = sum)

students2 = data.frame(gender, married, play)
rownames(students2) = rollno
head(students2)
str(students2)
prop.table(ftable(students2))

#Model2
fit2 = rpart(play ~ gender + married, data=students2)
summary(fit2)
fit2

rpart.plot(fit2, type=2, extra=104, tweak=1.2, under=T, 
           shadow=c('brown','green','red','blue'),nn=T)

p1 <- predict(fit2, newdata = data.frame(gender=c('Female','Female','Male','Male'),
                              married=c('Single','Married','Single','Married')))


prp(fit2)
prp(fit2, main="An Example",
    type = 4, fallen=T, branch=3, round = 0, leaf.round=9,
    clip.right.labs=F, under.cex=1, )
