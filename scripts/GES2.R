# Maually convert these files to .csv using SAS Universal Viewer 1.1
# e.g., s <- "../data/acctxt.sas"

#h <- read.csv("../data/GES/ASCII00/eventxt.csv", header = FALSE)

fs <- list.files(path = "../data/GES", pattern = "txt.csv", full.names = TRUE, recursive = TRUE)
out <- c()

for(f in fs){
  h <- read.csv(f, header = FALSE)
  # Get row with metadata
  meta <- h[grep(pattern = "FILENAME", x = h[,1]),]
  start <- grep(pattern = "PUT CASENUM", x = h[,1])
  end <- grep(pattern = "@", x = h[,1])-1
  vars <- h[start:end,]
  
  # Get row names (name of GES file)
  file_nam <- gsub(meta, pattern = ".*(ges\\d{4}).*", replacement = "\\1")
  # Get table names (name of table within a year)
  tab_nam <- gsub(x = meta, pattern = "^FILENAME\\s([A-Za-z]*)\\s.*", replacement = "\\1")
  # Clean field names
  vars2 <- gsub(pattern = "\\s*", replacement = "", x = vars)
  var_nam <- gsub(pattern = "^([A-Za-z_]*).*", replacement = "\\1", x = vars2)
  var_num <- gsub(pattern = "^[A-Za-z]*", replacement = "", x = vars2)
  # Cat
  out <- rbind(out, cbind(var_nam, var_num, file_nam, tab_nam))
}
out

f <- fs[1]
h <- read.csv(f, header = FALSE)
# Get row with metadata
meta <- h[grep(pattern = "FILENAME", x = h[,1]),]
start <- grep(pattern = "PUT CASENUM", x = h[,1])
end <- grep(pattern = "@", x = h[,1])-1
vars <- h[start:end,]
vars
# Get row names (name of GES file)
file_nam <- gsub(meta, pattern = ".*(ges\\d{4}).*", replacement = "\\1")
file_nam
# Get table names (name of table within a year)
tab_nam <- gsub(x = meta, pattern = "^FILENAME\\s([A-Za-z]*)\\s.*", replacement = "\\1")
tab_nam
# Clean field names
vars2 <- gsub(pattern = "\\s*", replacement = "", x = vars)
vars2
var_nam <- gsub(pattern = "^([A-Za-z_]*).*", replacement = "\\1", x = vars2)
var_nam
var_num <- gsub(pattern = "^[A-Za-z_]*", replacement = "\\1", x = vars2)
var_num
var_num <- gsub(pattern = ".*([0-9]+\\-[0-9]+).*", replacement = "\\1", x = vars2)
var_num
# Cat
out <- rbind(out, cbind(var_nam, var_num, file_nam, tab_nam))