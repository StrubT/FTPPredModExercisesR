
load("catheter.rda")

fits.h <- lm(catlength ~ height, data = catheter)
fits.w <- lm(catlength ~ weight, data = catheter)
fits <- lm(catlength ~ height + weight, data = catheter)

summary(fits.h)
summary(fits.w)

summary(fits)

newdat <- data.frame(height = 120, weight = 25)
predict(fits.h, newdata = newdat, interval = 'prediction')
predict(fits.w, newdata = newdat, interval = 'prediction')
predict(fits, newdata = newdat, interval = 'prediction')
