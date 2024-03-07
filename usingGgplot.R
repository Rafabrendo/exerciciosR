library('palmerpenguins')
data("penguins")
library(ggplot2)
View(penguins)

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g))

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species))

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, shape=species))

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,color=species, shape=species))

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,color=species, shape=species, size=species))+scale_size_manual(values = c(1, 2, 5))

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,alpha=species))

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,alpha=species), color="red")

ggplot(data=penguins)+geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g, linetype=species))+
      geom_point(mapping = aes(flipper_length_mm, y=body_mass_g)) #Combinando gráficos

ggplot(data=penguins)+geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g, linetype=species))

ggplot(data=penguins)+geom_jitter(mapping = aes(x=flipper_length_mm, y=body_mass_g))

view(diamonds)

ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=cut))
#Cut refers to a diamond's proportions, symmetry, and polish.

ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=cut, color=cut))
#Coloca a cor outside do bar

ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=cut, fill=cut))
#coloca a cor inside each bar

ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=cut, fill=clarity))
#Our plot now shows 40 different combinations of cut and clarity.