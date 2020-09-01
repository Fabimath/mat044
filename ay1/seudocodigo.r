### Lectura de Base de datos 
pagina = 'https://raw.githubusercontent.com/Fabimath/LEC-PYE/master/Clases/pokemon.csv'
x <- url(pagina, "r")
x <- readLines(x)
data = read.csv(text = x)

## Problemas
HP = data$HP
mean(HP)
median(HP)
library(modeest)
mlv(HP)
subdata=subset(data,HP > max(mean(HP),median(HP),mlv(HP)))
subdata2=subset(subdata, Legendary == 'False')
subdata3=subset(subdata2,Type.1 == 'Water' | Type.2 == 'Water')
agua = subset(subdata3,Attack >= quantile(subdata3$Attack,0.75))

cor(agua$Sp..Atk,agua$Sp..Def)