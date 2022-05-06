

library(lubridate)
library(tidyverse)
library(nycflights13)


arr_delay_ts <- flights %>% 
  mutate(date = make_date(year, month, day)) %>% 
  select(flight, carrier, date, arr_delay)

arr_delay_ts

arr_delay_ts

# Create a single plot with the timelines (one for each carrier) of the total delay per month.

df <- arr_delay_ts %>% 
  # filter(carrier == "AA") %>% 
  mutate(
    month_date = ceiling_date(date, unit = "month") - days(1)
  ) %>% 
  group_by(carrier, month_date) %>% 
  summarise(
    arr_delay = sum(arr_delay, na.rm = TRUE)
  ) 


ggplot(df) +
  aes(x = month_date, y = arr_delay, color = carrier) +
  geom_line()














