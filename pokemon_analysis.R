#install packages
install.packages('dplyr')
install.packages("ggplot2")
#activate packages
library(dplyr)
library(ggplot2)


Pokemon<- read.csv("~/ColumbiaUniversity/data_project/pokemon.csv")

View(Pokemon) #view the dataset

nrow(Pokemon)
ncol(Pokemon)

min(Pokemon$HP)
max(Pokemon$HP)

colnames(Pokemon)

colnames(Pokemon)[colnames(Pokemon) == 'Type.1']<- "primary_type" #change column names

sum(is.na(Pokemon$Type.2))
