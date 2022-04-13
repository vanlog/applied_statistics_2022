# load the dataset

library(tidyverse)
library(dslabs)

data("murders") # this is not mandatory in this case

# 2. calculate the rate: number of murders per 100 000 of population

murders <- as_tibble(murders)

murders_rate <- murders %>% 
  mutate(rate = total / (population / 100000))

murders_rate

# 3. calculate some statistics about rate: min, max, median, average

murders_summary_usa <- murders_rate %>% 
  summarise(
    min_rate = min(rate),
    median_rate = median(rate),
    average_rate = mean(rate),
    max_rate = max(rate),
    count = n()
  )

murders_summary_usa


# 4. Exercise: calculate this summary for South regions
murders_in_south <- murders_rate %>% 
  filter(region == "South")

murders_summary_south <- murders_in_south %>%  
  summarise(
    min_rate = min(rate),
    median_rate = median(rate),
    average_rate = mean(rate),
    max_rate = max(rate),
    count = n()
  )

murders_summary_usa
murders_summary_south

murders_rate %>% 
  arrange(desc(rate))

# Visualization -----------------------------------------------------------

ggplot(murders_rate) +
  aes(x = rate) + 
  geom_histogram(fill = "darkred", color = "black") + 
  geom_vline(xintercept = murders_summary_usa$min_rate, colour = "red") + 
  geom_vline(xintercept = murders_summary_usa$median_rate) + 
  geom_vline(xintercept = murders_summary_usa$max_rate, colour = "blue") +
  ylim(NA, 10)

ggplot(murders_in_south) +
  aes(x = rate) + 
  geom_histogram(fill = "darkgreen", color = "black") + 
  geom_vline(xintercept = murders_summary_usa$min_rate, colour = "red") + 
  geom_vline(xintercept = murders_summary_usa$median_rate) + 
  geom_vline(xintercept = murders_summary_usa$max_rate, colour = "blue") +
  ylim(NA, 10)

# 5. summary of the North countries

# 4. Exercise: calculate this summary for all regions
murders_rate %>% 
  group_by(region) %>% 
  summarise(
    min_rate = min(rate),
    median_rate = median(rate),
    average_rate = mean(rate),
    max_rate = max(rate),
    count = n()
  ) %>% 
  arrange(desc(median_rate))

murders_summary_usa

murders %>% 
  arrange(desc(total))

murders %>% 
  top_n(5, total)

murders_rate %>% 
  top_n(5, rate)


murders %>% 
  count()

# Page 93 (section 4.9) of the book
install.packages("NHANES")
library(NHANES)
# use this data frame
NHANES
