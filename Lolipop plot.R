
#1. Graph Including all years
library(ggplot2)

# Data: Studies and their respective years
study_data <- data.frame(
  Study = c("Von Huhn (1927)", 
            "Eells (1926)", 
            "Croxton & Stryker (1932)", 
            "Croxton & Eells (1927)", 
            "Cleveland & McGill (1986)", 
            "Cleveland & McGill (1985)", 
            "Cleveland & McGill (1984)"),
  Year = c(1927, 1926, 1932, 1927, 1986, 1985, 1984)
)

# Reorder the Study variable by Year in descending order
study_data$Study <- factor(study_data$Study, levels = study_data$Study[order(study_data$Year, decreasing = TRUE)])

# Create the horizontal lollipop chart
ggplot(study_data, aes(x = Year, y = Study)) +
  geom_segment(aes(x = min(Year), xend = Year, y = Study, yend = Study), color = "blue", size = 1) +  # Horizontal lines
  geom_point(aes(x = Year, y = Study), color = "red", size = 4) +  # Red dots for years
  labs(
    title = "Initial Study Findings",
    x = "Year",
    y = NULL
  ) +
  scale_x_continuous(breaks = seq(min(study_data$Year), max(study_data$Year), 5)) +  # X-axis breaks for years
  theme_minimal() +
  theme(
    axis.text.y = element_text(size = 10),  # Improve readability of study labels
    axis.ticks.y = element_blank(),  # Hide Y-axis ticks
    axis.title.y = element_blank(),  # Remove Y-axis label
    axis.title.x = element_text(size = 12, face = "bold"),
    axis.text.x = element_text(size = 10),  # Adjust X-axis label size
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5)
  )


#2. Graph 
library(ggplot2)

# Data: Studies and their respective years
study_data <- data.frame(
  Study = c( "Croxton & Stryker ", 
             "Croxton & Eells ", 
             "Cleveland & McGill "),
  Year = c( 1927, 1932, 1984)
)

ggplot(study_data, aes(x = Year, y = Study)) +
  geom_segment(aes(x = 1925, xend = Year, y = Study, yend = Study), color = "blue", size = 1) +  # Horizontal lines from left
  geom_point(aes(x = Year, y = Study), color = "red", size = 4) +  # Red dots for years
  labs(
    title = "Initial Study Finding",
    x = "Year",
    y = NULL
  ) +
  scale_x_continuous(breaks = seq(1925, 1990, 5)) +  # X-axis breaks for years
  theme_minimal() +
  theme(
    axis.text.y = element_text(size = 10),  # Improve readability of study labels
    axis.ticks.y = element_blank(),  # Hide Y-axis ticks
    axis.title.y = element_blank(),  # Remove Y-axis label
    axis.title.x = element_text(size = 12, face = "bold"),
    axis.text.x = element_text(size = 10),  # Adjust X-axis label size
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5)
  )
