
v1 = c(1,2,NA,NA,5)
is.na(v1)
mean(v1, na.rm=T)
v1a = na.omit(v1)
sum(v1a)
anyNA(v1)
anyNA(v1a)
v1[is.na(v1)]=mean(v1,na.rm=T)
v1

library(VIM)
data(sleep, package = 'VIM')
head(sleep)
dim(sleep)
complete.cases(sleep)
sleep[complete.cases(sleep),]
sleep[!complete.cases(sleep),]
sum(is.na(sleep$Dream))
mean(is.na(sleep$Dream))
12/62
sum(complete.cases(sleep))
42/62
mean(!complete.cases(sleep))

library(mice)
mice::md.pattern(sleep)

VIM::aggr(sleep, prop=F, numbers=T