library(dslabs)
library(tidyverse)


data(murders)

murders
head(murders)

murders_tbl <- as_tibble(murders)

murders_tbl

# categorical variables ---------------------------------------------------

# categorical variables
murders_tbl$region

# levels: possible value for the variable
levels(murders_tbl$region)


murders_tbl


mutate(murders_tbl, rate = total / population * 100000)

# 1st dplyr verb
# create a transformed column
# assign the result to a new table
murders_rate <- murders_tbl %>% 
  mutate(rate = total / population * 100000)

murders_rate

# 2nd dplyr verb
# select a subset of the columns
murders_tbl %>%
  select(state, population, total)



# unselect some of the columns
murders_tbl %>%
  select(-abb, -region)


# create a transformed column
# delete the old columns
murders_tbl %>% 
  mutate(rate = total / population * 100000) %>% 
  select(-population, -total)


# 3rd dplyr verb
# filter rows by a criteria (logical condition)
murders_tbl %>% 
  filter(region == "South")

murders_tbl %>% 
  filter(region == "South") %>% 
  mutate(rate = total / population * 100000) %>% 
  filter(rate >= 4)

# 4th dplyr verb
murders_rate %>% 
  arrange(desc(rate))









