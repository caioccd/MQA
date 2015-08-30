source("load.R")

# Join raw data into a single file
census94 <- data.frame(do.call(rbind, lapply(list.files(RAW_DATA_PATH), function(s) read.csv(paste0(RAW_DATA_PATH, s), header = FALSE))))

colnames(census94) <- c("age", "workclass", "fnlwgt", "education", "education_num", "marital_status", "occupation", "relationship", "race", "sex", "capital_gain", "capital_loss", "hours_per_week", "native_country", "income")

save(census94, file = CENSUS94_PATH)

# Clean up
rm(census94)