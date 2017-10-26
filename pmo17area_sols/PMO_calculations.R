circle <- 1:12
m <- matrix(rep(NA, times=5*12), nrow=12)
for (i in circle){
  for (j in 0:4){
  m[i,j+1] <- (i+j) %% 12
  }
}


x <- 100:2015

x_3 <- x %% 3
x_8 <- x %% 8
x_6 <- x %% 6
x_3_8_not_6 <- (x_3 == 0 | x_8 == 0) & x_6 != 0
sum(x_3_8_not_6)


x <- 1:2015
dat <- rep(NA, times = 2015)
for (i in x){
  dat[i] <- floor(sqrt(i) / 10)
}
dat
sum(dat)

dat <- sapply(x, function(i) floor(sqrt(i) / 10))
sum(dat)

sum(floor(sqrt(x) / 10))
