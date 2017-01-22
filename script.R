library(Quandl)
library(ggplot2)
library(dplyr)
library(XML)
library(tidyr)

source("/media/sean/disk2/desktop/airbnb-invest/code/zillow_price.R", local = TRUE)

# Constants
kProjectDir <- "media/sean/disk2/desktop/bay-area-housing/"

zips <- c("Z94401_SF", "Z94555_SF", "Z95687_SF", "Z94501_SF", "Z95624_SF", "Z94601_SF", "Z94602_SF", "Z95203_SF", "Z95828_SF")
g <- plotPriceTrend(zips)
ggsave("1.png", plotPriceTrend(zips), width = 18, height = 10)
ggsave("2.png", plotPriceTrendWithBase(zips), width = 18, height = 10)
ggsave("3.png", plotPriceTrendWithCalib(zips), width = 18, height = 10)
ggsave("4.png", plotAnnualRate(zips), width = 18, height = 10)
