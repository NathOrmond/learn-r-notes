############## Packages 
# install.packages(c("learnr", "tidyverse", "remotes"))
# remotes::install_github("rstudio/gradethis")


# This is a single line comment
x <- 5 # Comments can also go after code

'This is a multi-line comment
It can span several lines
But its less commonly used than # comments'

# Numeric Type
a <- 1
# This shows you the type 
class(a)

# Integer Type
b <- 1L
class(b)

# Strings 
fruit <- "Apple"
fruit
# You can use either single or double quotes to declare a string
colour <- 'red'
colour

# Logical Types
# Create an object called x which takes the value TRUE
x <- TRUE
# print the contents of the object x
class(x)
y <- FALSE
y

############## Expressions and evaluations
x == y
x != y

b = 3
a > b
a >= b
a <= b

comparison <- x!=y
"red" == "Red"

is.logical(a)
is.numeric(a)
is.na(a)

############## Type Casting

# 0 casts to false
as.logical(0)
# everything else casts to true
as.logical(21)
# strings will not cast to logical
as.logical("oiashdkjhas")

as.numeric(TRUE)
as.numeric(FALSE)
as.numeric("4.5")
# Rounds DOWN
as.integer("4.5")

as.character(TRUE)
## [1] "TRUE"
as.character(FALSE)
## [1] "FALSE"
## Numeric to character

as.character(TRUE)
as.character(10)
as.character(-2.263)

############## Vector Types
# c() function for creating a vector
fruits <- c("Apple", "Orange", "Pear", "Grapes")
height <- c(1.68, 1.83, 1.57, 1.87, 1.7, 1.57, 1.73, 1.85, 1.6, 1.58)
smokes <- c(TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE)

# first 6 values of a vector
head(height)
# first n values
head(height, n = 4)
# last n values
tail(height, n=4)
# conditional filter
height[height>1.7]
# logical filtering
smokes[smokes]
smokes[!smokes]

# Coercion 
as.character(height)
as.logical(height)
as.numeric(smokes)

# Attempts to coerce multiple types 
# may result in string 
c(10, "banana", 1, 3, 5, TRUE)

# iterator 
c(1:10)
c(3.4:12.5)

# Factors store categorical information 
sex <- factor(c("Male", "Male", "Female", "Male", "Female", "Female", "Female", "Male", "Female", "Female"))
sex

# You can coerce a factor
as.character(sex)
as.numeric(sex)


############## Matrices
X <- matrix(1:12, nrow = 3)
X
Y <- matrix(1:12, ncol = 4)
Y
Z <- matrix(1:12, ncol = 4, byrow = TRUE)
Z
# Col 1
Z[, 1]
# Row 2 
Z[2, ]
# 1-indexing 

a<-matrix(c(1,2,3,4), nrow = 2)
a
matrix(c(1,2,3,4), nrow = 2)

# Matrix addition
X+Y 
# Matrix Multiplication 
X%*%Y
# Transpose Matrix 
t(X)

############## Data Frames 
activity_levels <- data.frame(Sex = sex, Activity = activity, Height = height, Smokes = smokes)
activity_levels
View(my_data_frame)
my_data_frame[row,col]
#### read csv 
my_data <- read.csv("file.csv")
my_data <- read.csv("file.csv", header = TRUE, na.strings = "*")
my_data <- read.table("file.txt", header = TRUE, na.strings = "*")

############## Missing Values
y <- c(1,2,3,4,NA)
is.na(y)
mydata$v1[mydata$v1==99] <- NA
mean(y, na.rm=TRUE) 

############## Functions 
name(arg, arg2, arg3)
# for docs
help(sqrt)
sqrt(9)
log(100)
log(100, base=10)
? mean
normal_sample<- rnorm(n=100, sd=2, mean=5)
mean(normal_sample)


(3.6*10^-3 + 7.2*x)/(10+2)
(3.6e-3 + 7.2*x)/(10+2)

3.6*10^-3 + 7.2*x/10+2