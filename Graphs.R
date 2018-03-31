
attach(women)
women
barplot(height)

library(vcd)

counts <- table(Arthritis$Improved, Arthritis$Treatment)

barplot(counts,main="Simple Bar Plot", xlab="Improvement", ylab="Frequency")

barplot(counts, main="Simple Bar Plot", horiz = TRUE, ylab="Improvement", xlab="Frequency")

barplot(counts, main="Stacked Bar Plot", xlab="Treatment", ylab="Frequency", col=c("red", "yellow","green"),
        legend = rownames(counts))

par(mfrow=c(2,2))
slices <- c(10,12, 4, 16, 8)
lbls <- c("US","UK","Australia","Germany","France")

pie(slices, labels=lbls,
    main="Simple Pie Chart")

pct <- round(slices/sum(slices)*100)
lbls2 <- paste(lbls, " ", pct, "%", sep=" ")
pie(slices, labels = lbls2, edges=200, radius=1 )

hist(mtcars$mpg)

hist(mtcars$mpg, breaks = 12)
