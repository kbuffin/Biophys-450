### Code for Generating Linear Standard Curve and Finding Unknowns ###
                       
                    ### TEMPLATE ###
### First define the dependent values (what you are finding y-axis)
y <- c()
### Now defing the indepndent values (what you have 'unknown' values for)
x <- c()

### Create a linear regression object
lm.a <- lm(y~x)

###Disply summary stats about object
summary(lm.a)


###Define unknown quantities of independent variable
unkx <- c()
###Estimate unknown dependent variables and give confidence intervals (error bounds)
predict(lm.a,data.frame(x=unkx), level = 0.90, interval = "confidence")
###Save estimates and error bounds as a table
unktable <- predict(lm.a,data.frame(x=unkx), level = 0.90, interval = "confidence")
### make into data.frame
unkframe <- data.frame(unktable)
### Generate absolute value of error using lower bounds and estimate
error <- (unkframe$fit - unkframe$lwr)
error



                    ### USING Non Normalized Data ###

### First define the dependent values (what you are finding y-axis)
y <- c(5, 6, 6.5, 7, 7.5, 8.5, 9)
### Now defing the indepndent values (what you have 'unknown' values for)
x <- c(0.008566667, 0.0497, 0.1022, 0.188, 0.2918, 0.357766667, 0.378466667)

### Create a linear regression object
lm.a <- lm(y~x)

###Disply summary stats about object
summary(lm.a)


###Define unknown quantities of independent variable
unkx <- c(0.0042, 0.357533333, 0.4015, 0.193033333)

###Estimate unknown dependent variables and give confidence intervals (error bounds)
predict(lm.a,data.frame(x=unkx), se.fit = TRUE)



                    ### Standard Curve/ unknowns pH 10 ###

### First define the dependent values (what you are finding y-axis)
y2 <- c(0, 1, 5, 10, 15, 20, 30, 40, 50)
### Now defing the indepndent values (what you have 'unknown' values for)
x2 <- c(0.0687, 0.0904, 0.1551, 0.2706, 0.3593, 0.4269, 0.5953, 0.7307, 0.9061)

### Create a linear regression object
lm.a2 <- lm(y2~x2)

###Disply summary stats about object
summary(lm.a2)


###Define unknown quantities of independent variable
unkx2 <- c(0.6589, 1.221, 5.405166667)
###Estimate unknown dependent variables and give confidence intervals (error bounds)
predict(lm.a2,data.frame(x2=unkx2), se.fit = TRUE)



                    ### Standard Curve/ Unknowns pH 6 ###

### First define the dependent values (what you are finding y-axis)
y3 <- c(50,	40,	30,	20,	15,	10,	5,	1,	0)
### Now defing the indepndent values (what you have 'unknown' values for)
x3 <- c(0.1801,	0.157,	0.1377,	0.1117,	0.0967,	0.088,	0.0749,	0.0702,	0.069)

### Create a linear regression object
lm.a3 <- lm(y3~x3)

###Disply summary stats about object
summary(lm.a3)


###Define unknown quantities of independent variable
unkx3 <- c(0.184766667, 0.2951, 0.881433333)
###Estimate unknown dependent variables and give confidence intervals (error bounds)
predict(lm.a3,data.frame(x3=unkx3), se.fit = TRUE)
