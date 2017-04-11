# Exercise 3: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data('USPersonalExpenditure')

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame('USPersonalExpenditure')

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme
data.frame('USPersonalExpenditure')

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
US.Personal.Expenditure <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
#X1940, X1945, X1950, X1955, 

# Why are they so strange?
# Maybe it refers to some sort of axis - like X and Y axes for 2D data

# What are the row names of your dataframe?
# Food and Tobacco, Household Operation, Medical and Health, Personal Care, Private Education 

# Create a column `category` that is equal to your rownames
US.Personal.Expenditure$category <- rownames(US.Personal.Expenditure)

# How much money was spent on personal care in 1940?
# 1.040

# How much money was spent on Food and Tobacco in 1960
# 5.40

# What was the highest expenditure category in 1960?
# Food and Tobacco

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year

HighestSpendingCategory <- function(year) {
  year.info <- 
}

# Using your function, determine the highest spending category of each year


# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
