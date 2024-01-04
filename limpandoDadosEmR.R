bookings_df <- read.csv("/home/rafael/Downloads/hands-on activity-cleaning data in R2_POR.csv")

head(bookings_df)

colnames(bookings_df)

skim_without_charts(bookings_df) #Fornece um resumo detalhado dos dados

trimmed_df <- bookings_df %>% 
  select(hotel, is_canceled, lead_time)

View(trimmed_df)

trimmed_df %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename(hotell = hotel)

example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")
#A função unite pertence ao pacote tidyr e é utilizada para combinar colunas em um único vetor de caracteres, 
#geralmente separados por um caractere específico.
#unite(data, col, ..., sep = "")

example2_df <- bookings_df %>%
  mutate(guests = adultos + criancas + bebes)

View(example2_df)

head(example2_df)

#Criei duas novas colunas e coloquei a soma em uma delas, e na outra eu coloquei a media.
example3_df <- bookings_df %>%
  summarize(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))

#Renomeando a variavel hotel
trimmed_df %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename(hotel_type = hotel)
