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
new_data <- data.frame(CompPrice=125, Income=80, Advertising=0, Population=300, Price=125, ShelveLoc='Good', Age=60, Education=15,
                       Urban='No', US='Yes')
prec <- predict(model, newdata=new_data)
prec

#### Residual analysis ####
residuals(model)
rstudent(model)

#### Confidence interval ####
confint(model, level=0.990)
help("confint")

#### Feature Select ####
ajust <- 