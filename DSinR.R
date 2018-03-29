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
