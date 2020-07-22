# NOTE: To load data, you must download both the extract's data and the DDI
# and also set the working directory to the folder with these files (or change the path below).

install.packages('ipumsr')
library("ipumsr")

setwd("/Users/dieulinhnguyen/Dropbox/Coding stuff/R practice")

if (!require("ipumsr")) stop("Reading IPUMS data into R requires the ipumsr package. It can be installed using the following command: install.packages('ipumsr')")

ddi <- read_ipums_ddi("usa_00033.xml")
data <- read_ipums_micro(ddi)

head(data)
