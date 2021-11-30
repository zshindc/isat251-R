myfile <- file.choose()
parking.data <- read.csv(myfile, header=T)
parking.data$participant <- as.factor(parking.data$participant)
parking.data$satisfaction <- as.factor(parking.data$satisfaction)
summary(parking.data)

n <- length(parking.data$satisfaction)
n
n_successes <- length(which(parking.data$satisfaction=="N"))
n_successes
n_failure <- n - n_successes
n_failure

phat <- n_successes/n
phat
qhat <- 1-phat
qhat

se <- sqrt(phat*qhat/n)

qnorm(0.975, mean=0, sd=1, lower.tail=TRUE, log.p = FALSE)

ME <- z*se

phat + c(-ME, ME)

