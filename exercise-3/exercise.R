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
colnames(US.Personal.Expenditure)

# Why are they so strange?
# Can't store columns names w/ just numbers

# What are the row names of your dataframe?
rownames(US.Personal.Expenditure)

# Create a column `category` that is equal to your rownames
US.Personal.Expenditure$category <- rownames(US.Personal.Expenditure)

# How much money was spent on personal care in 1940?
care.1940 <- US.Personal.Expenditure['Personal Care', 'X1940']

# How much money was spent on Food and Tobacco in 1960
# 5.40

# What was the highest expenditure category in 1960?
highest.1960 <- US.Personal.Expenditure[US.Personal.Expenditure$X1960 == 
                                          max(US.Personal.Expenditure$X1960), 'category']

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that yearsf

HighestSpendingCategory <- function(year) {
  return (US.Personal.Expenditure$category[US.Personal.Expenditure[year] == 
                                             max(US.Personal.Expenditure[year])])
}

# Using your function, determine the highest spending category of each year
highest.1955 <- HighestSpendingCategory('X1955')
highest.1950 <- HighestSpendingCategory('X1950')
highest.1945 <- HighestSpendingCategory('X1945')
highest.1940 <- HighestSpendingCategory('X1940')

# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
