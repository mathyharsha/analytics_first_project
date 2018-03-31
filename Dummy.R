# Dummy Variables

df = mtcars
summary(df)

df$cyl = factor(df$cyl)
df$am = factor(df$am)

M1 = lm(mpg ~ wt + cyl + am, data=df)
summary(M1)
summary(df$cyl)

predict(M1, newdata = data.frame(wt=c(2,2), cyl=factor(c(4,6)), am=factor(c(0,1,1,0)) ) )

