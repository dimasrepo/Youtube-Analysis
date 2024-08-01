library(shiny)
library(shinydashboard)

options(scipen = 99) 
library(dplyr) 
library(lubridate) 
library(ggplot2) 
library(plotly) 
library(glue) 
library(scales) 


vids <- read.csv("data_input/youtubetrends_2023.csv")


vids_clean <- vids %>% 
  mutate_at(.vars = c("title", "category_id", "channel_title", 
                      "publish_when",  "publish_wday"), 
            .funs = as.factor) %>% 
  mutate(trending_date = ymd(trending_date),
         publish_time = ymd_hms(publish_time))
