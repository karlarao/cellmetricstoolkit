set_current_directory()

# regular way, this is slow
# xdata <- read.csv("test.csv", sep="")  

# example on small data
# library(data.table)
# xdata <- fread("test.csv", sep="?")

# example on big data (19million rows @ 1.7GB in 2 minutes!!!)
library(data.table)
# setwd("E:\\GitHub\\cellmetricstoolkit\\fread")
xdata <- fread("test.csv", sep="?")
# Sys.time(); xdata <- fread("cell_iops.txt", sep="?") ; Sys.time()

# > Sys.time(); xdata <- fread("cell_iops.txt", sep="?") ; Sys.time()
# [1] "2016-09-08 16:44:05 EDT"
# Read 19753787 rows and 1 (of 1) columns from 1.733 GB file in 00:02:38
# [1] "2016-09-08 16:46:43 EDT"

# check this 
# http://stackoverflow.com/questions/12320595/regex-multiple-pattern-with-sigular-replacement


head(xdata)
names(xdata) <- c("col1")
head(xdata)

# http://stackoverflow.com/questions/35366803/how-to-use-gsub-for-the-list-of-multiple-patterns-in-r
# find.list <- list("IO/sec",": ")
# find.string <- paste(unlist(find.list), collapse = "|")
# xdata$col1 <- gsub(find.string," ", xdata$col1)

xdata$col1 <- gsub("IO/sec|: "," ", xdata$col1)
# xdata$col1 <- gsub(": ", " ", xdata$col1)
# xdata$col1 <- rm_white(xdata$col1)

head(xdata)

library(splitstackshape)
xdata <- cSplit(xdata, "col1", sep=" ", direction = "wide" , type.convert = FALSE)

head(xdata)









