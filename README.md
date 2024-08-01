# Youtube Analysis Project

## Overview
This project aims to analyze trending YouTube videos for 2023, focusing on various aspects such as views, likes, and the impact of different publishing times and categories on video performance. The dataset includes information about 72,397 videos with 16 variables ranging from trending dates to viewer engagement metrics.

## Directory Structure
- `data/`: Contains the dataset used for analysis.
- `scripts/`: Includes the R scripts used for data cleaning, analysis, and visualization.
- `outputs/`: Stores the generated plots and reports.
- `README.md`: This document, explaining the project structure and findings.

## Column Descriptions
- **trending_date**: The date the video trended on YouTube.
- **title**: The title of the video.
- **channel_title**: The name of the channel that published the video.
- **category_id**: The category under which the video is listed.
- **publish_time**: The exact time the video was published.
- **views**: The number of views the video has received.
- **likes**: The number of likes on the video.
- **dislikes**: The number of dislikes on the video.
- **comment_count**: The number of comments on the video.
- **comments_disabled**: Whether comments are disabled for the video.
- **ratings_disabled**: Whether ratings are disabled for the video.
- **video_error_or_removed**: Whether the video has errors or has been removed.
- **publish_hour**: The hour at which the video was published.
- **publish_when**: Time range indicating when the video was published.
- **publish_wday**: The day of the week the video was published.
- **timetotrend**: Time taken for the video to trend after being published.

## How to Use This Data
To use this dataset, you can load it into any data analysis tool such as R, Python, or Excel. The dataset is particularly useful for analyzing the patterns and trends in YouTube videos, such as the best times to publish for maximum engagement, the most popular categories, and identifying top-performing channels.

## Exploring the Data
Key explorations include:
- Identifying the top 10 channels within the "Gaming" category based on average views.
- Counting the number of videos in each category to see which content types are most popular.
- Analyzing the average views by the hour of publication to determine the optimal time to release content.

## Analyzing Trends
The analysis reveals that channels like **Rockstar Games** and **MrBeast Gaming** dominate the "Gaming" category. The data also shows that videos published early in the morning (around 4 AM) tend to receive higher average views. Categories like **Gaming**, **Entertainment**, and **Music** have the highest counts of trending videos.

## Visualizations
The project includes several visualizations, such as:
- A bar chart showing the top 10 gaming channels by average views.
- A pie chart of video counts by category.
- A line graph depicting average views by the hour of publication for the gaming category.

## Reporting
Reports generated from this analysis provide insights into video performance trends, helping content creators and marketers optimize their strategies. These reports can be used to determine the best times to publish videos and the types of content that are likely to trend.

## Source
The dataset used in this project can be found at the following link:
[Youtube Analysis Project](https://github.com/dimasrepo/Youtube-Analysis/tree/main/Youtube_Analysis/data_input)

Report for this project can be found at the following link:
[Youtube Analysis Project](https://dimasaditya.shinyapps.io/Youtube_Analysis/)
