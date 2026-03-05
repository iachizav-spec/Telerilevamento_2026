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

# bands
b3 = im.import("sentinel.dolomites.b3.tif")
b4 = im.import("sentinel.dolomites.b4.tif")
b8 = im.import("sentinel.dolomites.b8.tif")

par(mfrow=c(1,4))
plot(b2)
plot(b3)
plot(b4)
plot(b8)

dev.off()

im.multiframe(1,4)
plot(b2)
plot(b3)
plot(b4)
plot(b8)

# Exercise: plot the bands using im.multiframe() one on top of the other
im.multiframe(4,1)
plot(b2)
plot(b3)
plot(b4)
plot(b8)

im.multiframe(2,2)
plot(b2)
plot(b3)
plot(b4)
plot(b8)


im.multiframe(2,2)
cl1 <- colorRampPalette(c("firebrick4", "red", "brown1"))(100)   
cl2 <- colorRampPalette(c("dark green", "green", "light green"))(100)   
cl3 <- colorRampPalette(c("dark blue", "blue", "light blue"))(100)   
cl4 <- colorRampPalette(c("darkorchid", "orchid", "lightorchid"))(100)   
plot(b2, col=cl1)
plot(b3, col=cl2)
plot(b4, col=cl3)
plot(b8, col=cl4)
