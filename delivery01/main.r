source("load.R")

load(CENSUS94_PATH)

# Covering everything from the first chapter

head(census94)
summary(census94)

numeric_cols <- c("age", "fnlwgt", "education_num", "capital_gain", "capital_loss", "hours_per_week")

cov(census94[numeric_cols])
var(census94[numeric_cols])
cor(census94[numeric_cols])

dist(scale(census94[1:14, numeric_cols], center = FALSE))

sapply(numeric_cols, function(s) { qqnorm(census94[, s], main = s); qqline(census94[, s]) } )

# Covering everything from the second chapter

par(mfrow = c(3, 2))
plot(age ~ income, data = census94)
plot(education_num ~ income, data = census94)
plot(marital_status ~ income, data = census94)
plot(relationship ~ income, data = census94)
plot(race ~ income, data = census94)
plot(sex ~ income, data = census94)

subsample <- census94[sample(dim(census94)[1], 20), ]
plot(age ~ hours_per_week, data = subsample)
rug(subsample$hours_per_week, side = 1)
rug(subsample$age, side = 2)

library("MVA")
bvbox(census94[, c("hours_per_week", "age")], xlab = "hours_per_week", ylab = "age")

hull <- with(census94, chull(age, hours_per_week))
plot(age ~ hours_per_week, data = census94)
with(census94, polygon(hours_per_week[hull], age[hull], density = 15, angle = 30))

census94[hull, ]
plot(age ~ hours_per_week, data = census94[hull, ])
