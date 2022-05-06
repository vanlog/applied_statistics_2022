

library(lubridate)
library(tidyverse)
library(nycflights13)


arr_delay_ts <- flights %>% 
  mutate(date = make_date(year, month, day)) %>% 
  select(flight, carrier, date, arr_delay)

arr_delay_ts

arr_delay_ts

# Create a single plot with the timelines (one for each carrier) of the total delay per month.


ymd("2020-01,01")
make_date(2020,01,01)


df <- arr_delay_ts %>% 
  # filter(carrier == "AA") %>% 
  mutate(
    date_month = ceiling_date(date, "month") - days(1)
  ) %>% 
  group_by(carrier, date_month) %>% 
  summarise(
    arr_delay = sum(arr_delay, na.rm = TRUE)
  )
df

df <- arr_delay_ts %>% 
  group_by(carrier) %>% 
  summarise(
    arr_delay = median(arr_delay, na.rm = TRUE)
  )

df %>% 
  ggplot() +
  aes(x = carrier, y = arr_delay) +
  geom_bar(stat = "identity")






