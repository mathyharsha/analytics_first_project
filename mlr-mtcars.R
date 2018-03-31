#mtcars

mtcars
dim(mtcars)
names(mtcars)
head(mtcars)
?mtcars

(M1 = lm(mpg ~ disp + cyl + hp + drat + wt + qsec + carb, data=mtcars))
(M2 = lm(mpg ~ disp + cyl + wt, data=mtcars))
anova(M1, M2)
anova(M2, M1)

(M3 = lm(mpg ~ cyl + wt, data=mtcars))
anova(M3,M2)

library(MASS)
(model1a = lm(mpg ~ disp + cyl + hp + drat + wt + qsec + carb, data=mtcars))

step = stepAIC(model1a, direction='both')

library(olsrr)
model <- lm(mpg ~ disp + cyl + hp + drat + wt + qsec + carb, data=mtcars)
k <- ols_step_all_possible(model)
plot(k)
k
