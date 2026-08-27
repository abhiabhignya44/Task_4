# Data-blind pipeline fixture
# Synthetic data only — no real student outcomes are used.

synthetic_data <- data.frame(
  studytime = c(1, 2, 3, 4),
  G3 = c(8, 10, 12, 14)
)

# Expected output contract:
# - 4 observations
# - 2 variables
# - No missing values
# - G3 should increase as studytime increases

stopifnot(nrow(synthetic_data) == 4)
stopifnot(ncol(synthetic_data) == 2)
stopifnot(sum(is.na(synthetic_data)) == 0)
stopifnot(all(diff(synthetic_data$G3) > 0))

cat("PASS: synthetic pipeline fixture meets all expected output contracts.\n")