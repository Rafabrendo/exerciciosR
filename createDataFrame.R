id <- c(1:10)

nome <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

id_cargo <- c("Profissional", "Programador", "Gerencia", "Administrativo", "Desenvolvedor", "Programador", "Gerencia", "Administrativo", "Desenvolvedor", "Programador")

empregado <- data.frame(id, nome, id_cargo)

print(empregado)

separate(empregado, nome, into=c('primeiro_nome', 'ultimo_nome'), sep=' ')
#Eu separei e empreguei a variavel
empregado <- separate(empregado, nome, into=c('primeiro_nome', 'ultimo_nome'), sep=' ')

first_name <- empregado %>% select(primeiro_nome)

last_name <- empregado %>% select(ultimo_nome)

job_title <- empregado %>% select(id_cargo)
#Tentativa de transformar o Data em Values
primeiro_name <- as.data.frame(lapply(first_name, as.list), stringsAsFactors = FALSE)
ultimo_Nome <- as.data.frame(lapply(last_name, as.list), stringsAsFactors = FALSE)

primeiro_nome <- first_name %>% 
  mutate_all(as.character)

ultimo_Nome <- last_name %>% 
  mutate_all(as.character)

#Usando o unite

first_name <- c("Jonh", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")
last_name <- c("Stewart", "Miller", "Mendes", "Landy", "Jordan", "Hickman", "Harper", "Garcia", "Berry", "Abrahamson")

empregado <- data.frame(id, first_name, last_name, id_cargo)

unite(empregado, 'nome', first_name,last_name, sep=' ')

View(penguins)
#Usando o mutate
penguins %>% 
  mutate(body_mass_kg=body_mass_g/1000)

penguins %>% 
  mutate(body_mass_kg=body_mass_g/1000, flipper_length_ma=flipper_length_mm/1000)
