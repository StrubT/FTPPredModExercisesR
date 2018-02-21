
data <- read.csv('child.txt')
dim(data)
str(data)
summary(data)
colnames(data)

nl <- data['Netherlands',]
nl

drunk <- data[, 'Drunkenness']
drunk_order <- order(drunk, decreasing = TRUE)
rownames(data)[drunk_order]
