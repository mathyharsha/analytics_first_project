library(arules)
library(arulesViz)
library(datasets)

#Load Groceries Data
data(Groceries)
Groceries

inspect(Groceries[1:5])

LIST(Groceries[4:7])

frequentItems <- eclat(Groceries, 
                       parameter = list(supp = 0.005, minlen = 3, maxlen = 5))

inspect(frequentItems[1:15])

sort(frequentItems, by="count", decreasing=T)

inspect(frequentItems[1:15])


itemFrequencyPlot(Groceries, topN=20, type="absolute")

itemFrequencyPlot(Groceries, topN=10, type="relative")
abline(h=0.2)

rules <- arules::apriori(Groceries, 
                         parameter = list(supp=0.005, conf=0.5))
rules
