
library(lmtest)
Realtive_change=read.csv("DJIA_data.csv",sep=',')[,4]
simplesum_sentiment=read.csv("DJIA_data.csv",sep=',')[,5]
weighted_sum_sentiment=read.csv("DJIA_data.csv",sep=',')[,6]

mean(weighted_sum_sentiment)
mean(simplesum_sentiment)


grangertest(Realtive_change ~ simplesum_sentiment, order = 1)

grangertest(Realtive_change ~ weighted_sum_sentiment, order = 1)


