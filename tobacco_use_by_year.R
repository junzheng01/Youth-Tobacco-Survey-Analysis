# Load necessary libraries
library(dplyr)
library(ggplot2)

# Set working directory (update this path to your local directory)
setwd("~/Desktop/didd130")

# Load the dataset
data <- read.csv("Youth_Tobacco_Survey__YTS__Data.csv")

# Filter data for Alabama, middle and high school students, and non-missing values
filtered_data <- subset(data, LocationDesc == "Alabama" & Education %in% c("High School", "Middle School") & !is.na(Data_Value))

# Create a bar chart
ggplot(filtered_data, aes(x = factor(YEAR), y = Data_Value, fill = Education)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(
    title = "Tobacco Use in Alabama by Year",
    x = "Year",
    y = "Percentage of Usage",
    fill = "Education Level"
  ) +
  theme_minimal()
