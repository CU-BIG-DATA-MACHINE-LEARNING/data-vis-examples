#install packages
install.packages('dplyr')
install.packages("ggplot2")
#activate packages
library(dplyr)
library(ggplot2)


Customer<- read.csv("~/ColumbiaUniversity/data_project/Customer.csv")
hist(Customer$Age, breaks=c(0,40,60,100), freq = TRUE)
#table(Customer$Age)


ggplot(Customer, aes(x=Age, y=Region, fill=Segment)) + geom_tile()

ggplot(Customer, aes(x=Region, fill=as.factor(Segment)))+geom_bar()

newDF<- data.frame(Customer$Age, Customer$Region, Customer$Segment, stringsAsFactors = T) #creating a data subset



Customer %>% filter(Region=="South") -> Southerners
ggplot(Southerners, aes(x=Segment, y=State, fill=Age))+geom_tile()
