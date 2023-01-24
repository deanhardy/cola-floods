rm(list=ls())

library(tidyverse) ## load tidyverse package
library(lubridate)
library(dataRetrieval)
##library(timeSeries)

## set data directory
datadir <- "/Users/dhardy/Dropbox/r_data/cola-floods"

####################################################
## adding automated download process for USGS data 
####################################################

# Rocky Branch at Whaley
siteNo <- "02169505" ## Rocky Branch @ Pickens
siteNo <- "02169570" ##Gills Creek @ Cola
pCode <- "00060"
statCode <- "00021"
start.date <- "2007-10-01" ## earliest available date
end.date <-  format(Sys.Date(), format="%Y-%m-%d")

df <- readNWISuv(siteNumbers = siteNo,
                 parameterCd = pCode,
                 startDate = start.date,
                 endDate = end.date)

# df$datetime <- as.POSIXct(df$datetime) ## convert datetime column to correct format
