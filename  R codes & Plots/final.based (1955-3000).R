#BASE MODEL
#Model 1
I<- matrix(c(1,0,0,1), nrow = 2)
I
B<- matrix(c(0.1315060,0,0,0.1282137), nrow = 2)
B
D<- matrix(c(0.0472744,0,0,0.0487697), nrow = 2)
D
M<- matrix(c(0.0865414,0,0,-0.0073908), nrow = 2)
M
G<-I+B-D+M
G
t_vals <- seq(1955, 3000, by = 5)
p_init <- c(12988, 152082)
p1 <- matrix(0, nrow = 2, ncol = length(t_vals))  
p1[,1] <- p_init
for (t in 2:length(t_vals)) {
  p1[,t] <- G %*% p1[,t - 1]
}
plot(t_vals, p1[1 ,], type = "o", col = "blue",
     xlab = "Year", ylab = "Population",
     main = "Population Prediction from year 1955 to 3,000 for model 1",xaxt = "n")
lines(t_vals, p1[2 ,], type = "o", col = "red", ylim = range(p1) )
axis(1, at = t_vals, labels = t_vals, las = 2)
legend("topleft", legend = c("Population of California", "Population Rest of U.S."),
       col = c("blue", "red"), lty = 1, pch = c(1, 1))
#In 2020
  # (2020-1955)/5 + 1 =14
      # for ex: since (1955-1955) / 5 = 0 / 5 = 0, but R starts at 1
      # so (1955-1955) / 5 + 1  = 1
p1[,14]


#Model 2
T <- matrix(c(0.937326763, 0.062673236,0.012743125, 0.987256874), nrow = 2)
T
t_vals <- seq(1955, 3000, by = 5)
p_init <- c(12988, 152082)
p2 <- matrix(0, nrow = 2, ncol = length(t_vals))  
p2[,1] <- p_init
for (t in 2:length(t_vals)) {
  p2[,t] <- T %*% p2[,t - 1]
}
plot(t_vals, p2[1 ,], type = "o", col = "blue",
     xlab = "Year", ylab = "Population", ylim = range(p2),
     main = "Population Prediction from year 1955 to 3,000 for model 2",xaxt = "n")
lines(t_vals, p2[2 ,], type = "o", col = "red")
axis(1, at = t_vals, labels = t_vals, las = 2)
legend("left", legend = c("Population of California", "Population Rest of U.S."),
       col = c("blue", "red"), lty = 1, pch = c(1, 1))


#Model 3
G_new <- I+B-D
G_new
T <- matrix(c(0.937326763, 0.062673236,0.012743125, 0.987256874), nrow = 2)
T
t_vals <- seq(1955, 3000, by = 5)
p_init <- c(12988, 152082)
p3 <- matrix(0, nrow = 2, ncol = length(t_vals))  
p3[,1] <- p_init
for (t in 2:length(t_vals)) {
  p3[,t] <- G_new %*% T %*% p3[, t - 1]
}
plot(t_vals, p3[1 ,], type = "o", col = "blue",
     xlab = "Year", ylab = "Population", ylim = range(p3) , 
     main = "Population Prediction from year 1955 to 3,000 for combined model", xaxt = "n")
lines(t_vals, p3[2 ,], type = "o", col = "red")
axis(1, at = t_vals, labels = t_vals, las = 2)
legend("topleft", legend = c("Population of California", "Population Rest of U.S."),
       col = c("blue", "red"), lty = 1, pch = c(1, 1))


#In 2020
p3[,14]


