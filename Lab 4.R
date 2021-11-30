myfile <- file.choose()
myfile
handspan_height <- read.csv(myfile,header=TRUE)
head(handspan_height)
summary(handspan_height)
dnorm(x,mean=174,sd=15.81139)
sd(x)
plot(x,dnorm(x,0,1.5),main="Normal PDF")
handspan_height.male <- handspan_height [which(handspan_height $gender=='M'),]
mydata <- read.table(myfile,header=FALSE)
mydata <- read.csv("myfile",header=FALSE)
dnorm(x,mean = 174,sd=15.81139)
hist(x)
hist(handspan_height$height,xlab="Height (cm)",main="Height Histogram")
plot(handspan_height$height,dnorm(x,mean=174,sd=15.81139),xlab="Height (cm)",ylab="Proabability",main="Normal PDF")
plot(x,dnorm(x,174,15.81139),main="Normal PDF",xlab="Height",ylab="Probability")
qqnorm(handspan_height$height)
qqline(handspan_height$height)
main="Normal Proability Plot"

dnorm(handspan_height$height,mean=174,sd=15.81139,log=FALSE)
plot(handspan_height$height,dnorm(handspan_height$height,mean=174,sd=15.81139,log=FALSE),xlab="Height (cm)",ylab="Proability",main="Normal Height Plot")
handspan_height.male <- handspan_height [which(handspan_height $gender=='M'),]
qqnorm(handspan_height.male$height)
qqline(handspan_height.male$height)
N(78,5)
scale(handspan_height.female$height)
proportions(mean,log=false)
