data$total_score <- rowMeans(data[,c("math_score", "science_score", "english_score")], na.rm = TRUE)
ggplot(data, aes(x = total_score)) + geom_histogram(fill = "#443785")data$total_score <- rowMeans(data[,c("math_score", "science_score", "english_score")], na.rm = TRUE)
ggplot(data, aes(x = total_score)) + geom_histogram(fill = "#443785")

