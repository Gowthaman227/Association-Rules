install.packages("arules")
library("arules")
install.packages("readxl")
library(readxl)
install.packages("arueslViz")
library("arulesViz")

# My movies Association Rules
movies <- read.csv(file.choose())
View(movies)
## Minlen = 2,,support=0.004,Confidence=0.8 ##
movie_rules <- apriori(as.matrix(movies[,6:15]),parameter=list(minlen=2,support=0.004,confidence=0.8))
inspect(movie_rules)
inspect(sort(movie_rules, by="lift"))

## Scatter Plot
plot(movie_rules)
library(colorspace)
## Scatter Plot Custom Colors
plot(movie_rules, control=list(col=sequential_hcl(10)))
## 2 Key Plot ##
plot(movie_rules, shading="order", control=list(main = "Two-key plot", 
                                          col=rainbow(5)))
## Matrix Plot
## 2D Matrix
plot(movie_rules, method="matrix", measure="lift")
## 3D Matrix
plot(movie_rules, method="matrix3D", measure="lift")
# Doubledecker plot helps to visualize only one rule ##
one_rule <- sample(movie_rules,1)
plot(one_rule,method="doubledecker",data=movies)
## Grouped Matrix  ##
plot(movie_rules,method="grouped")

## Minlen=3,support=0.006,Confidence=0.65
movie_rules <- apriori(as.matrix(movies[,6:15]),parameter=list(minlen=3,support=0.005,confidence=0.8))
inspect(movie_rules)
inspect(sort(movie_rules, by="lift"))
## Scatter Plot
plot(movie_rules)

library(colorspace)
plot(movie_rules, control=list(col=sequential_hcl(10)))
## 2 Key Plot ##
plot(movie_rules, shading="order", control=list(main = "Two-key plot", 
                                                col=rainbow(3)))
## Matrix Plot
## 2D Matrix
plot(movie_rules, method="matrix", measure="lift")
## 3D Matrix
plot(movie_rules, method="matrix3D", measure="lift")
# Doubledecker plot helps to visualize only one rule ##
one_rule <- sample(movie_rules,1)
plot(one_rule,method="doubledecker",data=movies)
## Grouped Matrix  ##
plot(movie_rules,method="grouped")
write(movie_rules, file="a_rules.csv",sep=",")

## Minlen = 1,,support=0.003,Confidence=0.7 ##
movie_rules <- apriori(as.matrix(movies[,6:15]),parameter=list(minlen=1,support=0.003,confidence=0.7))
inspect(movie_rules)
inspect(sort(movie_rules, by="lift"))

## Scatter Plot
plot(movie_rules)
library(colorspace)
## Scatter Plot Custom Colors
plot(movie_rules, control=list(col=sequential_hcl(10)))
## 2 Key Plot ##
plot(movie_rules, shading="order", control=list(main = "Two-key plot", 
                                                col=rainbow(5)))
## Matrix Plot
## 2D Matrix
plot(movie_rules, method="matrix", measure="lift")
## 3D Matrix
plot(movie_rules, method="matrix3D", measure="lift")
# Doubledecker plot helps to visualize only one rule ##
one_rule <- sample(movie_rules,1)
plot(one_rule,method="doubledecker",data=movies)
## Grouped Matrix  ##
plot(movie_rules,method="grouped")

# Groceries
Groc <- read.csv(file.choose())
View(Groc)
## Minlen=3,Supprt=0.005,Confidence=0.6 ##
Groc_rules <- apriori(Groc[,1:4],parameter = list(minlen=3,support=0.005,confidence=0.6))
inspect(Groc_rules)
inspect(sort(Groc_rules,by="lift"))
plot(Groc_rules)
library(colorspace)
plot(Groc_rules, control=list(col=sequential_hcl(10)))
## 2 Key Plot ##
plot(Groc_rules, shading="order", control=list(main = "Two-key plot", 
                                               col=rainbow(3)))
## Matrix Plot
## 2D Matrix
plot(Groc_rules, method="matrix", measure="lift")
## 3D Matrix
plot(Groc_rules, method="matrix3D", measure="lift")

## Grouped Matrix  ##
plot(Groc_rules,method="grouped")
write(Groc_rules, file="a_rules.csv",sep=",")

## Minlen=2,Supprt=0.004,Confidence=0.8 ##
Groc_rules <- apriori(Groc[,1:4],parameter = list(minlen=2,support=0.004,confidence=0.8))
inspect(Groc_rules)
inspect(sort(Groc_rules,by="lift"))
plot(Groc_rules)
library(colorspace)
plot(Groc_rules, control=list(col=sequential_hcl(10)))
## 2 Key Plot ##
plot(Groc_rules, shading="order", control=list(main = "Two-key plot", 
                                               col=rainbow(5)))
## Matrix Plot
## 2D Matrix
plot(Groc_rules, method="matrix", measure="lift")
## 3D Matrix
plot(Groc_rules, method="matrix3D", measure="lift")

## Grouped Matrix  ##
plot(Groc_rules,method="grouped")
write(Groc_rules, file="a_rules.csv",sep=",")

## Minlen=4,Supprt=0.003,Confidence=0.75 ##
Groc_rules <- apriori(Groc[,1:4],parameter = list(minlen=4,support=0.003,confidence=0.75))
inspect(Groc_rules)
inspect(sort(Groc_rules,by="lift"))
plot(Groc_rules)
library(colorspace)
plot(Groc_rules, control=list(col=sequential_hcl(10)))
## 2 Key Plot ##
plot(Groc_rules, shading="order", control=list(main = "Two-key plot", 
                                               col=rainbow(3)))
## Matrix Plot
## 2D Matrix
plot(Groc_rules, method="matrix", measure="lift")
## 3D Matrix
plot(Groc_rules, method="matrix3D", measure="lift")

## Grouped Matrix  ##
plot(Groc_rules,method="grouped")
write(Groc_rules, file="a_rules.csv",sep=",")
#Book Association Rules
book <- read.csv(file.choose())
View(book)
## Minlen=4,Support=0.003,Confidence=0.7 ##
book_rules <- apriori(as.matrix(book[,1:11]),parameter=list(minlen=4,support=0.003,confidence=0.7))
inspect(book_rules)                      
inspect(sort(book_rules, by="lift"))
inspect(sort(book_rules[1:50], by="lift"))
plot(book_rules)
library(colorspace)
plot(book_rules, control=list(col=sequential_hcl(10)))
## 2 Key Plot ##
plot(book_rules, shading="order", control=list(main = "Two-key plot", 
                                                col=rainbow(3)))
## Matrix Plot
## 2D Matrix
plot(book_rules, method="matrix", measure="lift")
## 3D Matrix
plot(book_rules, method="matrix3D", measure="lift")
# Doubledecker plot helps to visualize only one rule ##
one_rule <- sample(book_rules,1)
plot(one_rule,method="doubledecker",data=book)
## Grouped Matrix  ##
plot(book_rules,method="grouped")
write(book_rules, file="a_rules.csv",sep=",")

## Minlen=6,Support=0.005,Confidence=0.75 ##
book_rules <- apriori(as.matrix(book[,1:11]),parameter=list(minlen=6,support=0.005,confidence=0.75))
inspect(book_rules)                      
inspect(sort(book_rules, by="lift"))
inspect(sort(book_rules[1:50], by="lift"))
## Scatter Plot ##
plot(book_rules)
library(colorspace)
plot(book_rules, control=list(col=sequential_hcl(10)))
## 2 Key Plot ##
plot(book_rules, shading="order", control=list(main = "Two-key plot", 
                                               col=rainbow(3)))
## Matrix Plot
## 2D Matrix
plot(book_rules, method="matrix", measure="lift")
## 3D Matrix
plot(book_rules, method="matrix3D", measure="lift")
# Doubledecker plot helps to visualize only one rule ##
one_rule <- sample(book_rules,1)
plot(one_rule,method="doubledecker",data=book)
## Grouped Matrix  ##
plot(book_rules,method="grouped")
write(book_rules, file="a_rules.csv",sep=",")

## Minlen=5,Support=0.003,Confidence=0.7 ##
book_rules <- apriori(as.matrix(book[,1:11]),parameter=list(minlen=5,support=0.003,confidence=0.7))
inspect(book_rules)                      
inspect(sort(book_rules, by="lift"))
inspect(sort(book_rules[1:50], by="lift"))
plot(book_rules)
library(colorspace)
plot(book_rules, control=list(col=sequential_hcl(10)))
## 2 Key Plot ##
plot(book_rules, shading="order", control=list(main = "Two-key plot", 
                                               col=rainbow(3)))
## Matrix Plot
## 2D Matrix
plot(book_rules, method="matrix", measure="lift")
## 3D Matrix
plot(book_rules, method="matrix3D", measure="lift")
# Doubledecker plot helps to visualize only one rule ##
one_rule <- sample(book_rules,1)
plot(one_rule,method="doubledecker",data=book)
## Grouped Matrix  ##
plot(book_rules,method="grouped")
write(book_rules, file="a_rules.csv",sep=",")