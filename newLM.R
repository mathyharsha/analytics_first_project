library(gsheet)
area1 = "https://docs.google.com/spreadsheets/d/1qLHa5qFTyWacta8F-IGo6J3Zpf-BVR9OrlqONuJDqYc/edit#gid=2023826519"
df2 = as.data.frame(gsheet::gsheet2tbl(area1))
df2
fit2 = lm(Y ~ X, data = df2)
summary(fit2)
new2 = data.frame(X= c(2,3,4,1.2,5))
new2
predict(fit2, newdata=new2)

