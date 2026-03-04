#R code for visualizing satellite images
library(terra) # package for using spatial data
library(imageRy) # package devoted to satellite images
library(viridis) 

im.list()

# Sentinel-2 bands
# https://gisgeography.com/sentinel-2-bands-combinations/

b2 <- im.import("sentinel.dolomites.b2.tif")

#R è casesensitive attenzione alle maiuscole e minuscole 

# Changing colors
cl <- colorRampPalette(c("lightsalmon", "yellow", "mediumpurple1"))(100)
plot(b2, col=cl)

# Small number of nuances
cl <- colorRampPalette(c("lightsalmon", "yellow", "mediumpurple1"))(3)
plot(b2, col=cl)

# Using viridis to change colors
plot(b2, col=inferno(100))
plot(b2, col=mako(100))

# Exercise: assign a greycolor palete to the image
cl <- colorRampPalette(c("dark gray", "gray", "light gray"))(100)   
plot(b2, col=cl)

cl <- colorRampPalette(c("black","dark gray", "gray", "light gray"))(100)
plot(b2, col=cl)

# par, 
par(mfrow=c(1,2))
plot(b2, col=inferno(100))
plot(b2, col=cl)

#killer della visualizzazione
dev.off()

# im.multiframe
im.multiframe(1,2)
plot(b2, col=inferno(100))
plot(b2, col=cl)
