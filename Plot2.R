
data$Datetime <- as.POSIXct(data$Date_time)
ggplot(data, aes(x = Datetime, y = Global_active_power, col='darkred')) +
  geom_line(show.legend = FALSE) +
  ylab("Global Active Power (kilowatts)") +
  scale_x_datetime(date_labels = "%A") +
  xlab("") +
  theme_minimal()

ggsave('Plot2.png', width = 12.7, height=12.7, units = 'cm')