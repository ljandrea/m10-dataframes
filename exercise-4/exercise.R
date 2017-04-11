# Exercise 4: Gates Foundation Educational Grants

# Read data into a variable called `grants` using the `read.csv` function
# Make sure *not* to read the strings as factors
<<<<<<< HEAD
grants <- read.csv('./data/gates_money.csv', stringsAsFactors = FALSE)
=======
>>>>>>> 8c5f681063c311f66a0508bfc09f29dd4d7691fb

# Use the View function to look at your data
View(grants)

# Create a variable `spending` as the `total_amount` column of the dataset
spending <- grants$total_amount

# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
<<<<<<< HEAD
org <- grants$organization
=======

>>>>>>> 8c5f681063c311f66a0508bfc09f29dd4d7691fb

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
mean.grant <- mean(spending)

# What was the dollar amount of the largest grant?
largest.grant <- max(spending)

# What was the dollar amount of the smallest grant?
smallest.grant <- min(spending)

# Which organization received the largest grant?
largest.org.g <- grants[grants$total_amount == largest.grant, 'organization']

# Which organization received the smallest grant?
smallest.org.g <- grants[grants$total_amount == smallest.grant, 'organization']

# How many grants were awarded in 2010?
grants.2010 <- length(grants[grants$start_year == 2010, 'organization'])
