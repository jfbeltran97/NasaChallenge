library(aod)
library(ggplot2)

mydata <- read_csv("~/NASA/NasaChallenge/Datasets/data_final.csv")

mydata$incendio <- factor(mydata$incendio)
mylogit <- glm(incendio ~ brightness + temperatura + humedad, data = mydata, family = "binomial")

summary(mylogit)

mytest <- read_csv("~/NASA/NasaChallenge/Datasets/data_test.csv")

mytest$incendio_predecir <- predict(mylogit, newdata = mytest, type = "response")

max(mytest$incendio_predecir)