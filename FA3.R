# Sample EXAM SCORES
examscores <- c(88, 45, 53, 86, 33, 86, 85, 30, 89, 53, 41, 96, 56, 38, 62,
                71, 51, 86, 68, 29, 28, 47, 33, 37, 25, 36, 33, 94, 73, 46,
                42, 34, 79, 72, 88, 99, 82, 62, 57, 42, 28, 55, 67, 62, 60,
                96, 61, 57, 75, 93, 34, 75, 53, 32, 28, 73, 51, 69, 91, 35)

# Calculate Q1, Q2, Q3, D9, P95

#COMPUTATIONS
quartile_1 <- quantile(examscores, 0.25)
quartile_2 <- median(examscores)
quartile_3 <- quantile(examscores, 0.75)
decile_9 <- quantile(examscores, 0.9)
percentile_95 <- quantile(examscores, 0.95)

# #RESULTS
cat("1st Quartile:", quartile_1, "\n")
cat("2nd Quartile:", quartile_2, "\n")
cat("3rd Quartile:", quartile_3, "\n")
cat("9th Decile:", decile_9, "\n")
cat("95th Percentile:", percentile_95, "\n")



