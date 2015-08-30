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