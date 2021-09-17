## Create database from GES
## Jon Skaggs
## 2021-08-30


library(dplyr)
library(tools)
library(haven)


name <- "accident"
#name <- "vehicle"
#name <- "person"

pat <- paste(name, toupper(name), toTitleCase(tolower(name)), sep = "|")

files <- list.files(path = "../data/GES", pattern = pat, recursive = TRUE, full.names = TRUE)



# 2015
ges15 <- read.csv("../data/GES/GES2015csv/ACCIDENT.CSV") 
saveRDS(ges15, "../data/GES2015.rds")

ges00 <- read.table("../data/GES/ASCII00/ACCIDENT.TXT" , fill = TRUE)
ncol(ges00) #19

dat <- data.frame()
for(file in unique(files)){
  print(file)
  if(grepl(file, pattern = ".TXT$")){
    csv <- read.table(file, skipNul = TRUE, fill = TRUE)
  }else if(grepl(file, pattern = ".csv")){
    csv <- read.csv(file, skipNul = TRUE)
  }else{
    stop("File doesn't end in .csv or .txt; don't know how to parse")
  }
  csv[] <- lapply(csv, as.character)
  dat <- bind_rows(dat, csv)
}
saveRDS(dat, file = paste0("../data/GES_", name, ".rds"))

files <- list.files(path = "../data/GES", pattern = ".sas", recursive = TRUE, full.names = TRUE)

a <- read_sas(files[1])
