
#1955 ca
I <- matrix(c(1, 0, 0, 1), nrow = 2)  
B <- matrix(c(0.02483992, 0, 0, 0.024929591), nrow = 2)  
D <- matrix(c(0.00849997, 0, 0, 0.00850001), nrow = 2)  
G_new <- I+B-D
T <- matrix(c(0.970076896, 0.029923103,0.015999946, 0.984000053), nrow = 2)
t_vals <- seq(1955, 2100, by = 5)
p_init <- c(5487.9, 11142.1)
p3 <- matrix(0, nrow = 2, ncol = length(t_vals))  
p3[, 1] <- p_init
for (t in 2:length(t_vals)) {
  p3[,t] <- G_new%*%T %*% p3[,t - 1]
}
plot(t_vals, p3[1 ,], type = "o", col = "blue",
     xlab = "Year", ylab = "Population", ylim = range(p3),
     main = "Population Prediction from 1955 to 2100 for combined model",xaxt = "n")
lines(t_vals, p3[2 ,], type = "o", col = "red")
axis(1, at = t_vals, labels = t_vals, las = 2)
legend("topleft", legend = c("Population of Ontario", "Population Rest of Canada"),
       col = c("blue", "red"), lty = 1, pch = c(1, 1))
#

#1970
I <- matrix(c(1, 0, 0, 1), nrow = 2)  
B <- matrix(c(0.013663438, 0, 0, 0.015557205), nrow = 2)  
D <- matrix(c(0.007521999, 0, 0, 0.007470255), nrow = 2)  
G_new <- I+B-D
T <- matrix(c(0.959999957, 0.040000042,0.015993776, 0.984006223), nrow = 2)
t_vals <- seq(1970, 2100, by = 5)
p_init <- c(5803.658, 11658.023)
p3 <- matrix(0, nrow = 2, ncol = length(t_vals))  
p3[, 1] <- p_init
for (t in 2:length(t_vals)) {
  p3[,t] <- G_new%*%T %*% p3[,t - 1]
}
plot(t_vals, p3[1 ,], type = "o", col = "blue",
     xlab = "Year", ylab = "Population", ylim = range(p3),
     main = "Population Prediction from 1970 to 2100 for combined model",xaxt = "n")
lines(t_vals, p3[2 ,], type = "o", col = "red")
axis(1, at = t_vals, labels = t_vals, las = 2)
legend("topleft", legend = c("Population of Ontario", "Population Rest of Canada"),
       col = c("blue", "red"), lty = 1, pch = c(1, 1))

#1970-3000
I <- matrix(c(1, 0, 0, 1), nrow = 2)  
B <- matrix(c(0.013663438, 0, 0, 0.015557205), nrow = 2)  
D <- matrix(c(0.007521999, 0, 0, 0.007470255), nrow = 2)  
G_new <- I+B-D
T <- matrix(c(0.959999957, 0.040000042,0.015993776, 0.984006223), nrow = 2)
t_vals <- seq(1970, 3000, by = 5)
p_init <- c(5803.658, 11658.023)
p3 <- matrix(0, nrow = 2, ncol = length(t_vals))  
p3[, 1] <- p_init
for (t in 2:length(t_vals)) {
  p3[,t] <- G_new%*%T %*% p3[,t - 1]
}
plot(t_vals, p3[1 ,], type = "o", col = "blue",
     xlab = "Year", ylab = "Population", ylim = range(p3),
     main = "Population Prediction from 1970 to 3000 for combined model",xaxt = "n")
lines(t_vals, p3[2 ,], type = "o", col = "red")
axis(1, at = t_vals, labels = t_vals, las = 2)
legend("topleft", legend = c("Population of Ontario", "Population Rest of Canada"),
       col = c("blue", "red"), lty = 1, pch = c(1, 1))

