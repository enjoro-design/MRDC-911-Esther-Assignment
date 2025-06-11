data %>% count(extracurricular_activities) %>% mutate(prop = n / sum(n))
data %>% count(faculty) %>% mutate(prop = n / sum(n))
