
# ggplot aesthetics -------------------------------------------------------

# There are several ways to do the same plot on ggplot, 
# sometimes the differences are minimal, but present.

# In particular, we ask ourselves the question: what value 
# do aesthetics have in different positions?

# aesthetics are global to all geometries
ggplot(heights, mapping = aes(x = sex)) +
  geom_bar()

ggplot(heights) +
  aes(x = sex) +
  geom_bar()


# aesthetics are relating only to the geom_bar
ggplot(heights) +
  geom_bar(mapping = aes(x = sex))

# examples -----------------------------------------------------------------

pl <- ggplot(heights, mapping = aes(x = height, y = ..density..)) +
  geom_histogram(color = "black", fill = "darkgreen") +
  geom_density(adjust = 1.0, color = "red", size = 2)
pl


pl <- ggplot(heights) +
  geom_histogram(mapping = aes(x = height, y = ..density..), color = "black", fill = "darkgreen") +
  geom_density(mapping = aes(x = height), adjust = 1.0, color = "red", size = 2)
pl
