#first script
#install and load the library ggplot2

install.packages("ggplot2")
library("ggplot2")

# built in histogram
hist(mtcars$hp)

#ggplot2 histogram
ggplot(mtcars, aes(x = mtcars$hp)) +
  geom_histogram()

qplot(log(mtcars$hp), log(mtcars$mpg), data = mtcars, color = "green", geom = c("point", "smooth"))

qplot(x = mpg, data = mtcars,geom = "density", main = "distribution of gas milage",
  xlab = "Mile Per Gallon", ylab = "density", col = "green")
ggplot2::mpg


ggplot(data = mpg) + 
  
geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy,
     size = class, alpha = class), color = "dark red")

da = mtcars
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)


# left
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

# right
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy, color = class))
newdata = mpg

qplot(data = mpg, x = displ, y = hwy, color = mpg$manufacturer, facets = .~drv)


#ggmap packages
install.packages("stringi")
install.packages("ggmap")
library(ggmap)
library(stringi)
qmap(location = "boston university")

