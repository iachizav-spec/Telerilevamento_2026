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
cl1 <- colorRampPalette(c("firebrick4", "red", "brown1"))(100)   
cl2 <- colorRampPalette(c("dark green", "green", "light green"))(100)   
cl3 <- colorRampPalette(c("dark blue", "blue", "light blue"))(100)   
cl4 <- colorRampPalette(c("darkorchid", "orchid", "lightorchid"))(100)   
plot(b2, col=cl1)
plot(b3, col=cl2)
plot(b4, col=cl3)
plot(b8, col=cl4)

sent = c(b2, b3, b4, b8)
plot(sent, col=cl)

names(sent) = c("b2-blue", "b3-green", "b4-red", "b8-NIR")
sent

plot(sent, col=cl)
plot(sent)

names(sent) = c("b2blue", "b3green", "b4red", "b8NIR")
dev.off()
plot(sent$b8NIR)

plot(sent[[4]])

# importing several bands altogether
sentdol = im.import("sentinel.dolomites")

# How to import severla sets altogether
pairs(sentdol)]
plot(sentdol[[4]])
plot(sentdol[[4]], col=inferno(100))

# viridis
plot(sentdol, col=viridis(100))
plot(sentdol, col=mako(100))
plot(sentdol, col=magma(100))

# Viridis colors:
# https://cran.r-project.org/web/packages/viridis/vignettes/intro-to-viridis.html

# 1 - band 2 (blue)
# 2 - band 3 (green)
# 3 - band 4 (red)
# 4 - band 8 (NIR)

# Natural colors
im.plotRGB(sentdol, r=3, g=2, b=1)

# False colors
im.plotRGB(sentdol, r=4, g=3, b=2)
im.plotRGB(sentdol, r=3, g=4, b=2)
im.plotRGB(sentdol, r=2, g=4, b=3)
im.plotRGB(sentdol, r=3, g=4, b=1)

im.multiframe(1,2)
im.plotRGB(sentdol, r=2, g=4, b=3)
im.plotRGB(sentdol, r=3, g=4, b=1)

dev.off()
im.plotRGB(sentdol, r=3, g=2, b=4)
