
par(mfrow = c(4, 2))
values <- c(0, 10, 11)
sim <- sample(values, 1000, replace = TRUE)
hist(sim, main = paste('Original'))
qqnorm(sim)

for (n in c(5, 10, 200)) {
	sim <- matrix(sample(values, n * 1000, replace = TRUE), ncol = n)
	sim.mean <- apply(sim, 1, 'mean')
	hist(sim.mean, main = paste('Sample mean of', n, 'observations'))
	qqnorm(sim.mean)
}
