AppleStock <- read.csv(file = "https://raw.githubusercontent.com/vincentarelbundock/Rdatasets/master/csv/Stat2Data/AppleStock.csv", header = TRUE, sep = ",")

summary(AppleStock)
mean(AppleStock$Price)
mean(AppleStock$Volume)
median(AppleStock$Price)
median(AppleStock$Volume)
quantile(AppleStock$Price)
quantile(AppleStock$Volume)

AppleStock_Wrangling <- subset(AppleStock, Price > 1, c('Price','Change', 'Volume'))
AppleStock_Wrangling

#QUestion 3
hist(AppleStock$Price, main="AppleStock Prices", xlab="Prices", breaks=4, col= "orange")

boxplot(AppleStock$Volume ~ AppleStock$Change, data=AppleStock, main=toupper("Volume and change of AppleStock"),
        font.main=3, cex.main=1.2, xlab="Change", ylab="Volume", font.lab=3, col="orangered")


#Meaningful question for analysis
#The Original question was has the AppleStock been increasing in price and volume over time due to its revenues and sales.
#Based on this information the volume has been increasing as well as it's price. We can see that by examining graphs the price has been doing increaments over time.
#The volume has been a good prediction for determine how much of an impact it is getting 

AppleStock <- read.csv(file = "https://github.com/Minorka05/R-Bridge-Course-Final-Project-AppleStock/blob/main/AppleStock.csv", header = TRUE, sep = ",")

