data$study_hours_binned <- cut(data$study_hours_weekly,
                               breaks = c(0, 10, 20, 30, Inf),
                               labels = c("Low", "Moderate", "High", "Very High"))
ggplot(data, aes(x = study_hours_binned)) + geom_bar(fill = "#443785")
