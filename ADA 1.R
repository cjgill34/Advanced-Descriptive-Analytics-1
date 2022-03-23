#Question 1 
boxplot(weight~feed,data=chickwts, main="Chicken Weights",
        ylab="Weight (gm)", xlab="Feed") 

#Question 2
library(datasets)
library(dplyr)
data(iris)
summary(iris)
names(iris) <- tolower(names(iris))

iris.mean <- data.frame(aggregate(cbind(petal.length, petal.width, sepal.length, sepal.width) ~ iris$species,
          data = iris,
          mean
))

print(iris.mean)
