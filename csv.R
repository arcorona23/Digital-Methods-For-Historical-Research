library(ggplot2)
trade_data <-read.csv("/Users/arcorona23/Desktop/digital methods github/historical_trade_data.csv")
head(trade_data)
high_exports <- trade_data[trade_data$Exports > 200000, ]
print(high_exports)
trade_data$Trade_Balance <- trade_data$Exports - trade_data$Imports
head(trade_data)
trade_balance_plot <- ggplot(trade_data, aes(x = Year, y = Trade_Balance)) +
  geom_line(color = "blue", linewidth = 1.2) +
  labs(
    title = "Trade Balance Over Time",
    x = "Year",
    y = "Trade Balance"
  ) +
  theme_minimal()
print(trade_balance_plot)
ggsave("trade_balance_plot.png", plot = trade_balance_plot, width = 8, height = 6)

