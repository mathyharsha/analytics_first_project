library(ISLR)
str(Default)
summary(Default)

logit = glm(default ~ income + balance + student, family='binomial', data=Default)
summary(logit)

library(dplyr)
(ndata <- (slice(Default, seq(0,n(),500))))

table(Default$default, Default$student)
addmargins(prop.table(table(Default$default, Default$student)))

fitted.results <- predict(logit, newdata=ndata, type='response')

cbind(ndata, fitted.results)

ndata %>% mutate(predict = ifelse(fitted.results < 0.5, "NO", "YES"))
