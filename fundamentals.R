## VECTORS

# Combine
vec <- c(3, 45, 56, 732)
is.numeric(vec)
is.integer(vec)
is.double(vec)

v2 <- c(3L, 12L, 243L, 0L)
is.numeric(v2)

vChar <- c('a', 'b', 'hi3')
is.character(vChar)
is.numeric(vChar)

v_bad <- c('a', 'b', 7)  # converts the 7 to a character!


# Sequence
a <- seq(1,15)
a_step2 <- seq(1,15,2)


# Replication
b <- rep(3,5)
c <- c(1,2)
d <- rep(c, 4)


## Square Brackets []
w <- c('a', 'b', 'c', 'd', 'e')
w_a <- w[1]
w_no_c <- w[-3]
w_abc <- w[1:3]
w_ace <- w[c(1,3,5)]


## Vectorized Operations
a <- c(1,2,3)
b <- c(4,5,6)
c <- a + b  # R automatically does piece-wise addition!
d <- a*b  # R performed a piece-wise product for us!

e <- c(T, T)  # = (1, 1)
e*e
e+e

x <- rnorm(5)
for(i in x){
  print(i)
}


## Functions
# rnorm()
# 
# c()
# seq(from, to, by, [length.out])
  # length.out specifies # of vals you want between from and to!
# rep([each])
  # rep(1:2, each=3) = 1 1 1 2 2 2
# 
# print()
# 
# is.numeric()
# is.integer()
# is.double()
# is.character()
# 
# typeof()
# 
# sqrt()
# paste()

?rnorm()  # get help about a func


## Packages
install.packages('ggplot2')
library(ggplot2)