# Rose drawing with R

Use R studio to paint roses for your family, friends and lovers.

![eb2448104cfda6ef940428d94838fed](https://github.com/user-attachments/assets/2a34191c-2c3d-407e-b92a-132519b578d8)

The code referenced RED Ploggers @恃心修此身 and @Alice酱不爱吃鱼 for improvement.

Initially appeared on
[gist](http://xhslink.com/a/1WN9P3fBr96Z).

## Getting Started

These instructions are for drawing roses on R Studio.

### Prerequisites

Download and use R Studio.

### Installing

A step by step series of examples that tell you how to get your own roses on R Studio.

Say what the step will be

    install.packages("plot3D")

And import

    library(plot3D)

## Setting Up Grid and Matrix

Setting up the grid and matrix.

    x <- seq(0,24)/24
    t <- seq(0,575,by=0.5)/575*20*pi+4*pi
    grid <- expand.grid(x=x,t=t)

    x <- matrix(grid$x, ncol=25, byrow= TRUE)
    t <- matrix(grid$x, ncol=25, byrow= TRUE)
    p <- (pi/2)*exp(-t/(8*pi))
    change <- sin(15*t)/150
    u <- 1-(1-(3.6*t)%%(2*pi)/pi)^4/2 + change
    y <- 2*(x^2-x)^2*sin(p)
    r <- u*(x*sin(p)+y*cos(p))

  ### Set Up 3D Model

Setting up the 3D plot.

    persp3D(
      x = r*cos(t),
      y = r*cos(t),
      z = u*(x*cos(p)-y*sin(p)),
      main = "To my beloved friends",
      xlab = "You",
      ylab = "Love",
      zlab = "I",
      col = colorRampPalette(c("#FFFFE0","#87cefa"))(100),ticktype = "simple",
      bty = 'g',
      theta = -60,
      phi = 45
    )
    
    dev.off()
    dev.new()

## Using Plot3D

Draw the picture with Plot3D package.

    library(plot3D)
    x <- seq(0,24)/24
    t <- seq(0,575,by= 0.5)/575*20*pi + 4*pi
    grid <- expand.grid(x = x, t = t)
    x <- matrix(grid$x, ncol = 25, byrow = TRUE)
    t <- matrix(grid$t, ncol = 25, byrow = TRUE)
    p <- (pi/2)*exp(-t/(8*pi))
    change <- sin(15*t)/150
    u <- 1-(1-(3.6*t)%%(2*pi)/pi)^4/2 + change
    y <- 2*(x^2-x)^2*sin(p)
    r <- u*(x*sin(p)+y*cos(p))

Please note that the color can be changed due to your need. The color code provided here is for the purple and black version rose.


![aa87b1aed382d5a0c8f62c97c40c70e](https://github.com/user-attachments/assets/68aa0e55-48b1-4629-8b0a-e4bd9ddf9016)





    persp3D(
      x = r*cos(t),
      y = r*sin(t),
      z = u*(x*cos(p)-y*sin(p)),
      main = "To my beloved friends",
      xlab = "You",
      ylab = "Love",
      zlab = "I",
      col = colorRampPalette(c("#725e82","#392f41"))(100),
      colkey = FALSE,
      ticktype = "simple",
      bty = 'g',
      theta = -60,
      phi = 45
    )



# Example Pics

## Black and purple - Darkness Ver.
![aa87b1aed382d5a0c8f62c97c40c70e](https://github.com/user-attachments/assets/5f68fc81-f8b4-4325-ad55-0b3a10c5b384)

## Purple and yellow - Elegance Ver.
![751e9b7f41819302e828c182ac61d10](https://github.com/user-attachments/assets/dc1d7c03-29fd-40c5-8b35-e5f280a6a8c2)

## Red - Classic Ver.
![eb2448104cfda6ef940428d94838fed](https://github.com/user-attachments/assets/9806dd28-7ec4-484e-a7ea-f0891be6124a)

## Light blue - Youth Ver.
![00600ebd1db28a3f9860104e31f6505](https://github.com/user-attachments/assets/9a921871-51a4-4268-a2ed-49688f504c7c)
