#data("diamonds")
#View(diamonds)

names <- c("Rafa", "Bruna", "Rute", "Brendo")
age <- c(26, 26, 45, 26)
#Criando meu proprio data frame
people <- data.frame(names, age)

mutate(people, age_in_20 <- age < 45)#condicional
mutate(people, age_plus_20 = age + 20)#acumulativa

people <- mutate(people, age_in_20 = age < 45)
people <- mutate(people, age_plus_20 = age + 20)

people<- select(people, - age_in_20) #Retirei uma coluna

print(people)

#usando o subset()

#Usando o subset. Utilizei backticks ``
people <- subset(people, select = - `age_in_20 <- age < 45`)

#Vou ler um arquivo CSV com read

dados <- read.csv("/home/rafael/Downloads/hands-on activity.csv")

