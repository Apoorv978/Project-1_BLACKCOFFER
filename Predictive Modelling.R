# Finding a relation between Settlement and Pressure applied with the help of regression analysis
train <- read.csv(paste("Training_1.csv"),sep = ",")  #loading the dataset into r
attach(train)

# Linear Regression model for no geogrids
LinearModel1 <- lm(Settle~P,data = train) # fitting the regression model on the curve
summary(LinearModel1) #summary statistics of the model
fitted(LinearModel1)
write.csv(fitted(LinearModel1),"Model1.csv")
# Finding the coefficients of the linear model obtained

# Updated model which includes the no. of geogrids

LinearModel2 <- lm(Settle~P+Ngeo,data = train)
summary(LinearModel2)
fitted(LinearModel2)

# Multi-Regression Model

# Including the depth(D1) parameter

LinearModel3 <- lm(Settle~P+Ngeo+D1,data = train)
summary(LinearModel3)
fitted(LinearModel3)
write.csv(fitted(LinearModel3),"Prediction with only D1.csv")
# Including all depth parameters

LinearModel4 <- lm(Settle~P+Ngeo+D1+D2+D3,data = train)
summary(LinearModel4)
fitted(LinearModel4)