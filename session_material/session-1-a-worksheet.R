1+1

sqrt(9)

sqrt(2)

seconds_in_a_minute <- 60L
seconds_in_a_hour <- seconds_in_a_minute * 60L
seconds_in_a_hour
seconds_in_a_day <- seconds_in_a_hour * 24L
seconds_in_a_day

class(seconds_in_a_day)

v_1 <- c(1, 2, 3, 30, 100)
v_1
length(v_1)
class(v_1)
length(seconds_in_a_day)



v_1 <- c(1, 2, 3, 30, 100)
v_1
v_2 <- c(2, 2, 3, 60, 300)
v_2

v_1 + v_2
v_1 * v_2
v_1 - v_2
v_1 / v_2

v_1 * 3

sqrt(v_2)

v_2


v_labels <- c("red", "blue", "blue and red")
v_toys <- c("car", "bike", "bear")
v_labels

paste("red", "is", "a", "color")

paste(v_labels, "is", "a", "color")
paste("The", v_toys, "is", v_labels)

class(v_labels)

logical_vector <- c(TRUE, FALSE, TRUE)

all(logical_vector)
any(logical_vector)

my_name_is_andrea <- TRUE
i_am_a_student <- FALSE

my_name_is_andrea & i_am_a_student
my_name_is_andrea | i_am_a_student # "operator pipe"

class(logical_vector)

my_sum <- function(x, y) {
  output <- x + y
  output
}

my_sum(3, 4)


my_mix_vector <- c(1, "hello")

class(my_mix_vector)
my_mix_vector


my_mix_vector <- c(1, 3, 1L, 0L)

class(my_mix_vector)
my_mix_vector


my_mix_list <- list(1, 3, 1L, 0L)
class(my_mix_list)

class(my_mix_list[[3]])



# dataframes --------------------------------------------------------------

# install.packages("dslabs")
# install.packages("tidyverse")

# my own comment

library(dslabs)

data(murders)

?murders

murders  # Press the key F2


str(murders)













