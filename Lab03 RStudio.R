myfile <- file.choose()
handspan_height <- read.csv(myfile,header=TRUE)
head(handspan_height)
summary(handspan_height)
str(handspan_height)
plot(handspan_height$right.hand.span, handspan_height$height, main="Right Hand Spans vs. Height",xlab="Right Hand Span (cm)",ylab="Height (cm)")
cov(handspan_height$right.hand.span,handspan_height$height)/(sd(handspan_height$right.hand.span)*sd(handspan_height$height))
cor(handspan_height$right.hand.span,handspan_height$height)
fit <- lm(y~x)
y <- handspan_height$height
x <- handspan_height$right.hand.span
fit <- lm(y~x)
summary(fit)
plot(handspan_height$right.hand.span, handspan_height$height, main="Right Hand Spans vs. Height",xlab="Right Hand Span (cm)",ylab="Height (cm)",abline(h=100,lwd=200,col="red"))
