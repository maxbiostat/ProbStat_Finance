integrand <- function(x) cos(x^2)*sin(x^4)

curve(integrand)

trueI <- integrate(integrand, 0, 1)

N <- 1e7
Us <- runif(n = N)
Ts <- integrand(Us)

hist(Ts)

I.MC <- sum(Ts)/N
I.MC
trueI
