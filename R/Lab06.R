myfile <- file.choose()
mms.bags <- read.csv(myfile,header=TRUE)
summary(mms.bags)
## sample size as the row number in the dimension
n <- dim(mms.bags)[1]

mms.bags <- read.csv(myfile, header = 1)

# resassign the type in R for categorical variables
mms.bags$student <- as.factor(mms.bags$student)
mms.bags$id <- as.factor(mms.bags$id)
mms.bags$color <- as.factor(mms.bags$color)
mms.bags$defect <- as.factor(mms.bags$defect)

summary(mms.bags)

dim(mms.bags)
mms.bar <- mean(mms.bags$weight)
mms.bar
mms.s <- sd(mms.bags$weight)
mms.s

mms.se <- mms.s/sqrt(n)
mms.se

hist(mms.bags$weight, xlab="M&Ms weight (g)", main="Histogram of the Distribution of the M&Ms Weight")

# degrees of freedom
mms.df <- n-1

# t*
t_90 <- qt(p=.95 , df =mms.df)
t_95 <- qt(p=.975 , df =mms.df)
t_99 <- qt(p=.995 , df =mms.df)
t_90*mms.se
t_95*mms.se
t_99*mms.se
