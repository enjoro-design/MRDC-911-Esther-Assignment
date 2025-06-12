iqr <- IQR(data$family_income, na.rm = TRUE)
lower <- quantile(data$family_income, 0.25, na.rm = TRUE) - 1.5 * iqr
upper <- quantile(data$family_income, 0.75, na.rm = TRUE) + 1.5 * iqr
sum(data$family_income < lower | data$family_income > upper)

sum(is.na(data$family_income))  # Number of NAs
sum(data$family_income < lower | data$family_income > upper, na.rm = TRUE)
if (all(is.na(data$family_income))) {
  print("No data to analyze")
} else {
  iqr <- IQR(data$family_income, na.rm = TRUE)
  lower <- quantile(data$family_income, 0.25, na.rm = TRUE) - 1.5 * iqr
  upper <- quantile(data$family_income, 0.75, na.rm = TRUE) + 1.5 * iqr
  outliers <- sum(data$family_income < lower | data$family_income > upper, na.rm = TRUE)
}
