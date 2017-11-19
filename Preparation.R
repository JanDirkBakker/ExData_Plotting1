# Load the data using the libarary dplyr
library(data.table)
library(dplyr)

file.name <- "./household_power_consumption.txt"
url       <- "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zip.file  <- "./data.zip"

# Check if the data is downloaded and download when applicable
if (!file.exists("./household_power_consumption.txt")) {
    download.file(url, destfile = zip.file)
    unzip(zip.file)
    file.remove(zip.file)
}

loadData <- function() {
  read.table("./household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = TRUE, na.strings = "?") %>%
  mutate(Date = as.Date(Date, format = "%d/%m/%Y")) %>%
  filter(Date >= "2007-02-01" & Date <= "2007-02-02") %>%
  mutate(Datetime = as.POSIXct(paste(Date, Time), format="%Y-%m-%d %H:%M:%S")) %>%
  tbl_df
}

powtbl <- loadData()
glimpse(powtbl)


