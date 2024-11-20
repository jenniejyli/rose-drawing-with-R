install.packages("plot3D")

library(plot3D)

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

