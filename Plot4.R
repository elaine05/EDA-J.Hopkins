

library(gridExtra)
p1 <- ggplot(data, aes(x = Datetime, y = Global_active_power)) +
  geom_line(show.legend = FALSE, color='steelblue') +
  ylab("Global Active Power (kilowatts)") +
  scale_x_datetime(date_labels = "%A") +
  xlab("") +
  theme_minimal()

p2 <- ggplot(data, aes(x = Datetime, y = Voltage)) +
  geom_line(show.legend = FALSE, color='green') +
  ylab("Voltage") +
  scale_x_datetime(date_labels = "%A") +
  xlab("") +
  theme_minimal()

p3 <- ggplot(df, aes(x = Date_time, y = metering, color = submeter)) +
  geom_line(show.legend = FALSE) +
  ylab("Energy sub metering") +
  scale_x_datetime(date_labels = "%A") +
  xlab("") +
  theme_minimal()

p4 <- ggplot(data, aes(x = Datetime, y = Global_reactive_power, color='salmon')) +
  geom_line(show.legend = FALSE) +
  ylab("Global Reactive Power (kilowatts)") +
  scale_x_datetime(date_labels = "%A") +
  xlab("") +
  theme_minimal()

g <- arrangeGrob(p1, p2, p3, p4, ncol=2) 
ggsave(file="Plot4.png", g, width = 12.7, height=12.7, units = 'cm')
