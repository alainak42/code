library(tidyverse)

hist_p <- ggplot(diamonds, aes(x = price)) +
  geom_histogram(binwidth = 500, color = "white", fill = "steelblue") +
  labs(
    title = "Distribution of Diamond Prices",
    subtitle = "Diamond prices are strongly right-skewed, with most diamonds priced lower.",
    x = "Price (USD)",
    y = "Number of diamonds",
    caption = "Source: ggplot2 diamonds dataset"
  )

ggsave(file = "diamonds.png", plot = hist_p)
