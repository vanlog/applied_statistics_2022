# arrange

murders_sort <- murders_rate %>% 
  arrange(region, desc(rate))
murders_sort


# filter on multiple conditions

murders_rate %>% 
  filter(
    region == "South",
    rate > 5
  )

murders_rate %>% 
  filter(
    region == "South" & rate > 5
  )

# filter for rate > 5 and rate < 2
murders_rate %>% 
  filter(
    rate > 5 | rate < 2
  )

# filter for rate between 2 and 5
murders_rate %>% 
  filter(
    # rate > 2 & rate < 5,
    between(rate, 2, 5) # this is the same
  )

# filter for rate > 5 and rate < 2, in the South
murders_rate %>% 
  filter(
    region == "South",
    rate > 5 | rate < 2
  )

# filter for region that are in Northeast and "North Central"
murders_rate %>% 
  filter(
    # region == "North Central" | region == "Northeast"
    region %in% c("North Central", "Northeast")  # this is the mask
  )

# group_by and ungroup

murders_grouped <- murders_rate %>% 
  group_by(region)

murders_grouped %>% 
  summarise(rate_avg = mean(rate))

murders_grouped %>% 
  ungroup() %>% 
  summarise(rate_avg = mean(rate))




