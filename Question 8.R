chisq.test(table(data$internet_access, data$academic_performance))
ggplot(data, aes(x = academic_performance, fill = internet_access)) + 
  geom_bar(position = "fill") + 
  labs(y = "Proportion")
