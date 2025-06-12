ggplot(data, aes(x = study_hours_weekly, y = total_score, color = residency)) +
  geom_point(alpha = 0.6) +
  labs(title = "Study Hours vs Total Score by Residency")
