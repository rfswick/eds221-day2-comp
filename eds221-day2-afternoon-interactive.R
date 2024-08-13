rm(list = ls())
x <- c(2.1, 4.2, 3.3, 5.4)

x[1]
x[seq(1:3)]
x[c(3,1)]


x[order(x, decreasing = TRUE)]
x[c(1,1)]
x[c(2.1, 2.9)]

x[-1]
x[-c(3,1)]
x[c(-1,2)]

x[c(TRUE, TRUE, FALSE, FALSE)]
x[x > 3]
x[c(TRUE, FALSE)]
# This doesn't match with the number of values in our vector do R is making decisions without telling us. In this case it is assuming we want to replicate TRUE FALSE throughout the vector.
x[c(TRUE, TRUE, NA, FALSE)]
x[]
x[0]

x <- 1:5
x
x[c(1,2)] <- 2:3
x
x[-1] <- 4:1
x
x[c(TRUE, FALSE, NA)] <- 1
x
df <- data.frame(a = c(1, 10, NA))
df$a[df$a < 5] <- 0
df


mtcars
mtcars[mtcars$gear == 5,]
mtcars[mtcars$gear == 5 & mtcars$cyl == 4,]

subset(mtcars, gear == 5)
subset(mtcars, gear == 5 & cyl == 4 & mpg == 26)

library(tidyverse)
ggplot(data = subset(mtcars, gear == 5 & cyl == 4),
       aes(x = mpg, y = disp))+
  geom_point()

df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])
df
df$z <- NA
df
df$z <- NULL
df

df[c("x", "y")]
letters

df[setdiff(names(df), "z")]







