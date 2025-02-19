# Load necessary libraries
library(ggplot2)
library(dplyr)

# Set working directory (update this path to your local directory)
setwd("C:/Users/victo/OneDrive/Desktop/didal30")

# Load the dataset
data <- read.csv("Youth_Tobacco_Survey__YTS__Data.csv")


# Filter data for Alabama, high school students, and years 2000-2016
scatter_data <- data %>%
  filter(
    LocationDesc == "Alabama",
    Education == "High School",
    YEAR >= 2000 & YEAR <= 2016,
    Gender %in% c("Female", "Male")
  ) %>%
  group_by(YEAR, Gender) %>%
  summarise(Data_Value = mean(Data_Value, na.rm = TRUE), .groups = "drop")

# Create a scatter plot
ggplot(scatter_data, aes(x = YEAR, y = Data_Value, color = Gender)) +
  geom_point(size = 3) +
  geom_smooth(method = "lm", aes(color = Gender), linetype = "dashed") +
  labs(
    title = "Tobacco Use by Gender in Alabama (2000-2016)",
    x = "Year",
    y = "Tobacco Use (%)"
  ) +
  scale_color_manual(values = c("Male" = "blue", "Female" = "red")) +
  theme_minimal()
