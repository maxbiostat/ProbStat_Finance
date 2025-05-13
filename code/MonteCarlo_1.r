n <- 3
## X ~ log-normal(0, 1)

hist(rlnorm(n = 1e6, meanlog = 0, sdlog = 1))

Nrep <- 5000
out <- matrix(NA, ncol = n, nrow = Nrep)
for (i in 1:Nrep) {
  out[i, ] <- rlnorm(n = n,
                     meanlog = 0,
                     sdlog = 1)
}

head(out)
means <- rep(NA, Nrep)
for (i in 1:Nrep) {
  means[i] <- sum(out[i, ]) / n
}

expect <- exp(1 / 2)
vvar <- (exp(1) - 1) * exp(1)
ssd <- sqrt(vvar / n)

hist(means, probability = TRUE)
curve(dnorm(x, mean = expect, sd = ssd), lwd = 3, add = TRUE)
