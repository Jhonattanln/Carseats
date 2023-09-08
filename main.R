########################### Linear Model ###########################

#### Libraries ####
if (!require(ISLR)) {
  install.packages('ISLR')
  library(ISLR)
}

#### Data ####
data("Carseats") # Load dataset
help('Carseats') # Doc

'''
A variavél dependente será a variaver Sales e todas as outras variaveis serão as variaveis independentes
'''
dim(Carseats)
summary(Carseats)
