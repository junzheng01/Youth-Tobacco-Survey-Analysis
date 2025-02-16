# Load necessary libraries
library(ggplot2)

# Set working directory (update this path to your local directory)
setwd("C:/Users/victo/OneDrive/Desktop/didal30")

# Load the dataset
data <- read.csv("Youth_Tobacco_Survey__YTS__Data.csv")

# Filter data for Alabama and gender (Male and Female)
filtered_data <- subset(data, Gender %in% c("Male", "Female") & LocationDesc == "Alabama")

# Create a histogram
ggplot(filtered_data, aes(x = Data_Value, fill = Gender)) +
  geom_histogram(binwidth = 5, position = "dodge", color = "black", alpha = 0.7) +
  labs(
    title = "Tobacco Usage Among High Schoolers by Gender in Alabama",
    x = "Tobacco Usage Percentage",
    y = "Frequency"
  ) +
  theme_minimal() +
  scale_fill_manual(values = c("Male" = "blue", "Female" = "pink"))
