hotel_bookings <-read_csv("/home/rafael/Downloads/hands-on activity-cleaning data in R2_POR.csv")

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = criancas))
#Relação entre o tempo de espera da reserva e os hospedes quee viajam com crianças.

ggplot(data=hotel_bookings)+
  geom_bar(mapping = aes(x=hotel, fill=market_segment))
#Gráfico que mostra cada tipo de hotel e segmento de mercado, usando cores diferentes para representar cada segmento
#Obs.: Se não for especificado uma variavel para o eixo y, o codigo padrão será count

ggplot(data=hotel_bookings)+geom_bar(mapping=aes(x=hotel))+facet_wrap(~market_segment)
#Para criar um gráfico separado para cada segmento de mercado.

#Um gráfico que mostra a relação do tempo de espera e os hospedes que viajam com crianças para reservas onlines em hoteis da cidade
#Primeira etapa: Filtrar os dados
onlineTa_city_hotels <- filter(hotel_bookings,
                               (hotel=="City Hotel" &
                                 hotel_bookings$market_segment=="Online TA"))

#Outra maneira de fazer
onlineTa_city_hotels_v2 <- hotel_bookings %>% 
  filter(hotel=="City Hotel") %>% 
  filter(market_segment=="Online TA")

#Segunda etapa: diagramar seus dados filtrados
ggplot(data = onlineTa_city_hotels_v2)+geom_point(mapping = aes(x=lead_time, y=criancas))
