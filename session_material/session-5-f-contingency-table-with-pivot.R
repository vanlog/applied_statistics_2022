# dataset -----------------------------------------------------------------

class_student <- tribble(
  ~Name, ~Gender, ~Grade, ~Age,
  "Jude",     "M",    "A",  27L,
  "Philip",     "M",    "B",  24L,
  "Carl",     "M",    "A",  41L,
  "Anne",     "F",    "A",  32L,
  "Rose",     "F",    "B",  26L,
  "Peter",     "M",    "C",  30L,
  "Mary",     "F",    "A",  45L,
  "Michaela",     "F",    "B",  26L,
)
class_student


# already calculated contingency table ------------------------------------

cont_tbl <- table(class_student$Gender, class_student$Grade, dnn = c("Gender", "Grade"))
cont_tbl

# contingency table in data frame -----------------------------------------

class_count <- class_student %>% 
  group_by(Gender, Grade) %>% 
  summarise(
    count = n(),
    .groups = "drop"
  )

class_count %>% 
  pivot_wider(names_from = Grade, values_from = count)
