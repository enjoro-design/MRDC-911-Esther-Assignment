data$family_income_binned <- cut(data$family_income,
                                 breaks = quantile(data$family_income, probs = seq(0, 1, 0.25), na.rm = TRUE),
                                 include.lowest = TRUE,
                                 labels = c("Low", "Medium-Low", "Medium-High", "High"))
table(data$family_income_binned, data$academic_performance)
