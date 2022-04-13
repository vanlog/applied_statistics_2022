# 5th dplyr verb

library(tidyverse)
library(dslabs)

data("murders")


# mutate ------------------------------------------------------------------

murders_rate <- murders %>% 
  mutate(rate = total / population * 100000) 

# summarise ---------------------------------------------------------------

murders_rate %>% 
  summarise(count = n())

murders_rate %>% 
  summarise(total_population = sum(population))


murders_rate %>% 
  summarise(
    min_rate = min(rate)
  )

# summarise example ----------------------------------------------
# CTrl + shift + R to create headings

rate <- murders_rate$rate
rate
min(rate)


rate <- murders_rate$total / murders_rate$population * 100000
rate


# Summarise function signature 
# R^n -> R

# Mutate function signature
# R^n -> R^n


# summarise multiple aggregations -----------------------------------------


murders_rate %>% 
  summarise(
    min_rate = min(rate),
    median_rate = median(rate),
    average_rate = mean(rate),
    max_rate = max(rate),
    count = n()
  )

# Exercise: calculate this summary for south regions







