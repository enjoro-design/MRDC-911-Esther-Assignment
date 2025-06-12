ggplot(data, aes(x = study_hours_weekly)) +
  geom_histogram(binwidth = 2, fill = "#443785") +
  facet_wrap(~residency) +
  labs(title = "Study Hours by Residency")
