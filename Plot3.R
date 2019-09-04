df <- gather(data[, c("Date_time", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")], key = submeter, value = metering, Sub_metering_1, Sub_metering_2, Sub_metering_3)
ggplot(df, aes(x = Date_time, y = metering, color = submeter)) +
  geom_line() +
  ylab("Energy sub metering") +
  scale_x_datetime(date_labels = "%A") +
  xlab("") +
  theme_minimal()

ggsave('Plot3.png', width = 12.7, height=12.7, units = 'cm')