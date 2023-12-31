require(forecast)

# PIB per capita � o PIB dividido pelo n�mero de habitantes do pa�s.
# Aqui temos o PIB per capita anual desde 1967 at� 2016.

dir <- "/home/james/Dropbox/Modelos Dinamicos/Base de Dados/"
pib <- read.csv(paste(dir,"PIB_brasil.csv",sep=""), header = TRUE, sep = ";", dec = ",")

plot(1967:2016, pib[,2], type = "l",xlab = "Anos", ylab = "PIB per capita (em U$)",cex.lab = 1.2, cex.axis = 1.2, lwd = 2)

n <- length(pib[,2])
t <- 1:50
y <- pib[,2]
mod <- lm ( y ~ cbind(t , t^2, t^3, t^4, t^5, t^6)   )
summary(mod)
y_h <- fitted(mod)
lines(1967:2016, y_h, lty = 2, lwd = 2)

op <- par( mfrow = c(1,2))
  plot(y - y_h, , type = "l", xlab = "�ndice", ylab = "Res�duos", cex.lab = 1.2, cex.axis = 1.2, lwd = 2)
  abline(h=0, lty = 2, lwd = 2)
  Acf(y - y_h, xlab = "Defasagem", cex.lab =  1.2, lwd = 2, main = "FAC dos res�duos")
par(op)
