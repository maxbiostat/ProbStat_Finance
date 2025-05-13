integrand <- function(x) 25 * x^2 * cos(x^2) * exp(-25*x)

curve(integrand)

trueI <- integrate(integrand, 0, Inf)

N <- 1e7
Us <- runif(n = N)
Xs.PIT <- -log(Us)/25

hist(Xs.PIT, probability = TRUE) ## PIT = probability integral transform
curve(dexp(x, rate = 25), lwd = 3, add = TRUE)

Xs.direct <- rexp(n = N, rate = 25)

hist(Xs.direct, probability = TRUE)
curve(dexp(x, rate = 25), lwd = 3, add = TRUE)

### 

testFunction <- function(x) x^2 * cos(x^2)

Ws.PIT <- testFunction(Xs.PIT)
Ws.direct <- testFunction(Xs.direct)

hist(Ws.PIT)
hist(Ws.direct)

I.MC.PIT <- sum(Ws.PIT)/N
I.MC.direct <- sum(Ws.direct)/N
I.MC.PIT
I.MC.direct
trueI
