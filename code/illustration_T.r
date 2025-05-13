curve(dnorm, -4, 4, lwd = 3, main = "Standard normal")

curve(dchisq(x, df = 1), 0, 2, main = "Chi-squared(1)" )
curve(dchisq(x, df = 40), 0, 80, main = "Chi-squared(40)")

curve(dt(x, df = 1), -4, 4, lwd = 3, ylim = c(0, .5),
      main = "Student t")
curve(dt(x, df = 2), -4, 4, col = 2, lwd = 3, add = TRUE)
curve(dt(x, df = 5), -4, 4, col = 3, lwd = 3, add = TRUE)
