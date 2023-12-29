#Usando o Tibbles

data("diamonds")
view(diamonds)

teste_tibble <-as_tibble(diamonds)

view(teste_tibble)

#importando os dados

bookings_df <- read_csv("/home/rafael/Downloads/hands-on activity.csv")

view(bookings_df)
