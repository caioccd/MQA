# Clear all
#rm(list=ls())
#graphics.off()

# Create universal variables
DATA_PATH <<- paste0(getwd(), "/data/")
RAW_DATA_PATH <<- paste0(DATA_PATH, "raw/")
PROCESSED_DATA_PATH <<- paste0(DATA_PATH, "processed/")

CENSUS94_PATH <<- paste0(PROCESSED_DATA_PATH, "census94.Rda")