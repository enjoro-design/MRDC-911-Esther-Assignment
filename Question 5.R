ggplot(data, aes(x = academic_performance, y = math_score, fill = gender)) +
  geom_boxplot() +
  labs(title = "Math Score by Academic Performance and Gender")
