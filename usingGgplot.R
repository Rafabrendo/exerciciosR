data("penguins")
View(penguins)
ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g))

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species))

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, shape=species))

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,color=species, shape=species))

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,color=species, shape=species, size=species))

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,alpha=species))

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,alpha=species), color="red")

ggplot(data=penguins)+geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g, linetype=species))+
      geom_point(mapping = aes(flipper_length_mm, y=body_mass_g)) #Combinando gráficos

ggplot(data=penguins)+geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g, linetype=species))

ggplot(data=penguins)+geom_jitter(mapping = aes(x=flipper_length_mm, y=body_mass_g))
