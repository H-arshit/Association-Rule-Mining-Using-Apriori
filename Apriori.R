library(arules)

setwd("~/Desktop/ARL/1/")
sparce_groce <- read.transactions("groceries.csv" , sep = ",")


inspect(sparce_groce[1:5])


itemFrequencyPlot(sparce_groce , support = 0.050)


m1 <- apriori(sparce_groce , parameter = list(support = 0.007 , confidence = 0.25 , minlen  = 2))


m1

summary(m1)
