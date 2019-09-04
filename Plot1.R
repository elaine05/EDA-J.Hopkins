library(ggplot2)
library(tidyverse)
data %>% ggplot(data, mapping = aes(x=Global_active_power))+
  geom_histogram(color="darkred", fill="red")+theme_light()+
  labs(x = "Global Active Power (kilowatts)", title = "Global Active Power")
ggsave('Plot1.png', width = 12.7, height=12.7, units = 'cm')