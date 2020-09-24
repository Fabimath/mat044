## Ayudantía 2

## Problema 1

x = c(0,5,0,10,0,15,0,15,0)
y = c(0,0,0,10,0,15,0,2,0)

n = length(x)

sx2 = sum(x^2) - n*mean(x)^2
sy2 = sum(y^2) - n*mean(y)^2

sxy = sum(x*y) - n*mean(x)*mean(y)

# cova = 1/(n-1) * sxy

corr = sxy/sqrt(sx2*sy2)
corr
cor(x,y)

## Problema 2

# (a)

mc_T = c(rep(165,4),rep(175,8),rep(185,8))
mc_P = c(rep(45,3),rep(55,1),rep(55,3),rep(65,5),rep(55,2),rep(65,3),rep(75,3))
table(mc_T,mc_P)

n = length(mc_T)
mean(mc_T)
mean(mc_P)

var(mc_T)
smc_T2 = 1/(n-1)*(sum(mc_T^2) - n*mean(mc_T)^2)
smc_T2

var(mc_P)
smc_P2 = 1/(n-1)*(sum(mc_P^2) - n*mean(mc_P)^2)
smc_P2

cv.mcT = sd(mc_T)/mean(mc_T)
cv.mcT

cv.mcP = sd(mc_P)/mean(mc_P)
cv.mcP

# (b)

data = as.data.frame(cbind(mc_T,mc_P))
pb = subset(data,mc_T > 170)
pb
mean(pb$mc_P)

# (c)

cor(mc_P,mc_T)

# Existe asociación lineal


### Pregunta 3

# 1 Propuesto
# problema 2
tm = c('C','A','A','C','S','C','A','S','S','M',
       'A','A','M','C','M','C','A','A','C','S','M','A')
table(tm)
length(tm)

#problema 3
aux=read.csv2('final.csv')
boxplot(aux[,1])

#problema 4
sd(aux[,1])/mean(aux[,1])

aux2=read.csv2('aux2.csv')
sd(aux2[,1])/mean(aux2[,1])
# Los diametros son menos variables
