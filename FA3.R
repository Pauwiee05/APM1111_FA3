# Sample EXAM SCORES
examscores <- c(88, 45, 53, 86, 33, 86, 85, 30, 89, 53, 41, 96, 56, 38, 62,
                71, 51, 86, 68, 29, 28, 47, 33, 37, 25, 36, 33, 94, 73, 46,
                42, 34, 79, 72, 88, 99, 82, 62, 57, 42, 28, 55, 67, 62, 60,
                96, 61, 57, 75, 93, 34, 75, 53, 32, 28, 73, 51, 69, 91, 35)

# Calculate Q1, Q2, Q3, D9, P95

#FOR QUARTILES
quartile_1 <- quantile(examscores, 0.25)
# the value Q2 being equal to the median
quartile_2 <- median(examscores)
quartile_3 <- quantile(examscores, 0.75)

#QUARTILE RESULTS
cat("1st Quartile:", quartile_1, "\n")
cat("2nd Quartile:", quartile_2, "\n")
cat("3rd Quartile:", quartile_3, "\n")


#FOR DECILE
decile_9 <- quantile(examscores, 0.9)

#DECILE RESULTS
cat("9th Decile:", decile_9, "\n")


#FOR PERCENTILE
percentile_95 <- quantile(examscores, 0.95)

#PERCENNTILE RESULTS
cat("95th Percentile:", percentile_95, "\n")

