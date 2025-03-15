library(tidyverse)
library(palmerpenguins)
library(ggthemes)


ggplot(
  data = penguins,
  mapping=aes(x = flipper_length_mm, y = body_mass_g)
) + geom_point(mapping=aes(color=species)) + geom_smooth()


