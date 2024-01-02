penguins %>% 
  select(species) #vai me devolver as especies

penguins %>% 
  select(-species) #vai me devolver o resto, sem as especies

penguins %>% 
  rename(island_new=island) #Função para mudar o nome da coluna

rename_with(penguins, toupper)

clean_names(penguins)
