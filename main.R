########################### Linear Model ###########################

#### Libraries ####
if (!require(ISLR)) {
  install.packages('ISLR')
  library(ISLR)
}
if (!require(ggResidpanel)) {
  install.packages('ggResidpanel')
  library(ggResidpanel)
}
library(ggplot2)
#### Data ####
data("Carseats") # Load dataset
help('Carseats') # Doc

'''
A variavél dependente será a variaver Sales e todas as outras variaveis serão as variaveis independentes
'''
dim(Carseats)
summary(Carseats)

#### Plotting data #####
ggplot(Carseats, aes(x=Price, y=Sales))+
  geom_smooth(method='loess')+
  geom_point(size=2, col='blue')

#### Linear Model ####
model <- lm(data=Carseats, Sales~.)
summary(model)  

resid_panel(model)
resid_xpanel(model)

#### Predict ####


