# First R script
2+3
michele <- 2+3
michele
tecla <- 4+6
tecla
michele + tecla
michele^tecla
michele/tecla

#arrays o vettori

sonia <- c(10,8,3,1, 0) #funzione e argomenti
giorgia <- c(3,10,20,50, 100)
plot(giorgia, sonia) #come fare un plot
plot(giorgia, sonia, col="blue") #colore punti
plot(giorgia, sonia, col="blue", pch=19) #pch point character o tipo del carattere 
plot(giorgia, sonia, col="blue", pch=19, cex=2) #character exageration cex o dimensioni dei caratteri
plot(giorgia, sonia, col="blue", pch=19, cex=2, xlab="Inquinanti", ylab="N° Delfini") #Nomi assi

#Installazione pacchetti
#CRAN

install.packages("terra")
library(terra)

#GitHub

install.packages("devtools") #remotes
library(devtools)
install_github("ducciorocchini/imageRy")
