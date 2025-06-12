data$family_income[is.na(data$family_income)] <- median(data$family_income, na.rm = TRUE)
data$math_score[is.na(data$math_score)] <- median(data$math_score, na.rm = TRUE)
