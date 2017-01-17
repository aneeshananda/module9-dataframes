# THIS DATA IS NOT ACCURATE
# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
Seahawks.points <- c(20, 26, 25, 31, 24, 10, 40, 5, 26, 31, 31, 20)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
points.against <- c(25, 25, 24, 15, 14, 7, 38, 3, 34, 23, 6, 36)

# Combine your two vectors into a dataframe
games <- data.frame(Seahawks.points, points.against)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
games$diff <- games$Seahawks.points - games$points.against

# Create a new column "won" which is TRUE if the Seahawks won
games$won <- games$diff > 0

# Create a vector of the opponent names corresponding to the games played
opponents <- c("49ers", "cardinals", "rams", "packers", "panthers",  "eagles", "patriots", "saints", "falcons","dolphins", "lions", "bils")

# Assign your dataframe rownames of their opponents
rownames(games) <- opponents

# View your data frame to see how it has changed!
View(games)
