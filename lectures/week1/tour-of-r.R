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

############## Packages 
# install.packages(c("learnr", "tidyverse", "remotes"))
# remotes::install_github("rstudio/gradethis")
