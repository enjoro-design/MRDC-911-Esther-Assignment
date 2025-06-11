data$family_income <- ifelse(
  data$family_income > upper, upper,  
  ifelse(data$family_income < lower, lower,  
         data$family_income)
)
library(ggplot2)
# Before handling outliers
ggplot(data, aes(x = family_income)) + 
  geom_histogram(bins = 30, fill = "skyblue") +
  geom_vline(xintercept = c(lower, upper), color = "red", linetype = "dashed") +
  labs(title = "Family Income Distribution (Outliers Marked)")

# After capping outliers
data_capped <- data %>% 
  mutate(family_income = pmin(pmax(family_income, lower), upper))
ggplot(data_capped, aes(x = family_income)) + 
  geom_histogram(bins = 30, fill = "salmon")
> data$family_income <- ifelse(data$family_income > upper, upper,
                               +                              ifelse(data$family_income < lower, lower, data$family_income))

