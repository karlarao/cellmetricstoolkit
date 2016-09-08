set_current_directory()

# regular way, this is slow
# xdata <- read.csv("test.csv", sep="")  

# example on small data
library(data.table)
xdata <- fread("test.csv", sep="?")

# example on big data (19million rows @ 1.7GB in 2 minutes!!!)
library(data.table)
Sys.time(); xdata <- fread("cell_iops.txt", sep="?") ; Sys.time()

# > Sys.time(); xdata <- fread("cell_iops.txt", sep="?") ; Sys.time()
# [1] "2016-09-08 16:44:05 EDT"
# Read 19753787 rows and 1 (of 1) columns from 1.733 GB file in 00:02:38
# [1] "2016-09-08 16:46:43 EDT"