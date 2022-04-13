

# if else ------------------------------------------------------------------

a <- 0

if (a != 0) {
  print("The reciprocal is: ")
  print(1/a)
} else {
  print("The reciprocal does not exist when a in 0.")
}



# for statement -----------------------------------------------------------

ls <- list("car", 1, TRUE)

# iterate on elements
for (element in ls) {
  print(class(element))
}

class_ls <- list()

# iterate on the indexes of the elements (their position)
for (index in seq_along(ls)) {
  element <- ls[[index]]
  cat("the index is ", index, "\n")
  cat("the element is ", element, "\n")
  element_class <- class(element)
  class_ls[[index]] <- element_class
  print(element_class)
}

class_ls


