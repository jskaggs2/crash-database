## Download NHTSA data
## Jon Skaggs
## 2021-08-13

library(RCurl)

## FARS
years <- 1975:2019
for(year in years){
  url <- paste0("https://www.nhtsa.gov/file-downloads/download?p=nhtsa/downloads/FARS/",
  year, "/National/FARS", year, "NationalCSV.zip")
  destfile <- paste0("../data/FARS/FARS", year, "NationalCSV.zip")
  download.file(url, destfile)
  unzip(destfile, exdir = paste0("../data/FARS/FARS", year, "NationalCSV"))
}

## GES
parent <- "https://www.nhtsa.gov/file-downloads?p=nhtsa/downloads/GES/GES00/"
ge <- sprintf("wget -r -l1 -H -t1 -N -np -A.zip -erobots=off %s", parent)
system(ge)

#wget -r -np -k https://www.nhtsa.gov/file-downloads?p=nhtsa/downloads/GES/GES91/ASCII