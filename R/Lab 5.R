dice.value.table <- c(1,1,2,4,2,2)
names(dice.value.table) <- c("1","2","3","4","5","6")
dice.value.table
barplot(dice.value.table)
barplot(dice.value.table,main="Single Di Frequency Bar Plot",xlab="Number",ylab="Frequency of Number")
dice.means <- c(3.33,2.67,4,4.33,2.67,3.33,4,3.33,3.33,2.67,3,2.67,1.67,2.67,3.33,2,2.67,3.67,3.33,5)
hist(dice.means,main="Three Fair Dice Means Histogram",xlab="Dice Means",ylab="Mean Frequency")
sample_size <- 1
tries <- 1000
rolls <- replicate(tries, sample(c(1:6), sample_size, replace=T))
roll.means <- apply(rolls,2,mean)
roll.means <- rolls
summary(roll.means)
hist(roll.means, main = "Sampling Distribution of Mean: Rolling Dice", xlab = "Mean of Die Outcomes", ylab = "Frequency")
sample_size <- 3
tries <- 1000
rolls <- replicate(tries, sample(c(1:6), sample_size, replace=T))
roll.means <- apply(rolls,2,mean)
summary(roll.means)
hist(roll.means, main = "Sampling Size 3 Distribution of Mean: Rolling Dice", xlab = "Mean of Die Outcomes", ylab = "Frequency")
sample_size <- 100
tries <- 1000
rolls <- replicate(tries, sample(c(1:6), sample_size, replace=T))
roll.means <- apply(rolls,2,mean)
summary(roll.means)
hist(roll.means, main = "Sampling Size 100 Distribution of Mean: Rolling Dice", xlab = "Mean of Die Outcomes", ylab = "Frequency")
