

library(lubridate)
library(tidyverse)
library(nycflights13)


arr_delay_ts <- flights %>% 
  mutate(date = make_date(year, month, day)) %>% 
  select(flight, date, arr_delay)




arr_delay_ts

arr_delay_ts

# Create a plot with the timelines by carrier of the total delay per month.


ymd("2020-01,01")
make_date(2020,01,01)





















