#PAUL CARLOS T. LIMA I
#FA3 - Statistical Theory

# Sample EXAM SCORES
examscores <- c(88, 45, 53, 86, 33, 86, 85, 30, 89, 53, 41, 96, 56, 38, 62,
                71, 51, 86, 68, 29, 28, 47, 33, 37, 25, 36, 33, 94, 73, 46,
                42, 34, 79, 72, 88, 99, 82, 62, 57, 42, 28, 55, 67, 62, 60,
                96, 61, 57, 75, 93, 34, 75, 53, 32, 28, 73, 51, 69, 91, 35)


# COMPUTATIONS

# Calculations for skewness and kurtosis
n <- length(examscores)

# Other Computations
valid <- sum(!is.na(examscores))
mean_score <- mean(examscores)
median_score <- median(examscores)
mode_score <- as.numeric(names(sort(table(examscores), decreasing = TRUE)[1]))
std_dev <- sd(examscores)
variance <- var(examscores)
skewness <- (sum((examscores - mean_score)^3) / n) / (std_dev^3)
std_error_skew <- sqrt(6 * length(examscores) * (length(examscores) - 1) /
                             ((length(examscores) - 2) * (length(examscores) + 1) * (length(examscores) + 3)))

kurtosis <- (sum((examscores - mean_score)^4) / n) / (std_dev^4) - 3
std_error_kurt <- sqrt((24 * n * (n - 2) * (n - 3)) / ((n + 1) * (n + 1) * (n + 3) * (n + 5)))
mini <- min(examscores)
maxi <- max(examscores)
quartile_1 <- quantile(examscores, 0.25)
quartile_2 <- median(examscores)
quartile_3 <- quantile(examscores, 0.75)
decile_9 <- quantile(examscores, 0.9)
percentile_95 <- quantile(examscores, 0.95)


# Install and use kable extra so that a table would appear in the view tab on the lower right
#install.packages("rhandsontable")
library(rhandsontable)

# Create a data frame with the results
results <- data.frame(
  Requirements = c(
    "Valid", "Mode Score", "Median Score", "Mean Score",
    "Std. Deviation", "Variance", "Skewness", "Std. Error of Skewness",
    "Kurtosis", "Std. Error of Kurtosis", "Minimum", "Maximum", "25th Percentile",
    "50th Percentile", "75th Percentile", "90th Percentile", "95th Percentile"
  ),
  Score = c(
    valid, mode_score, median_score, mean_score,
    std_dev, variance, skewness, std_error_skew,
    kurtosis, std_error_kurt, mini, maxi, quartile_1,
    quartile_2, quartile_3, decile_9, percentile_95
  )
)
# Use this print code if table doesn't work
print(results)

# Creates an table
table <- rhandsontable(results)

# Display the table
table
