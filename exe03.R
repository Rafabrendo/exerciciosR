hotel_bookings <- read.csv("/home/rafael/Downloads/hands-on activity - Importing and working with data2.csv")

#Cria um gráfico de barras: um para dados 'city_hotel' e um para dados 'resort_hotel'
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title="Hotel bookings")

#Vou adicionar periodos de tempo
mindate <- min(hotel_bookings$arrival_date_year)#2015
maxdate <- max(hotel_bookings$arrival_date_year)#2017

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparação de segmentos de mercado por tipo de hotel para reservas de hoteis",
       subtitle=paste0("Dados de: ", mindate, " a ", maxdate))
#paste0() -> concatena strings

#Usando o caption
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparação de segmentos de mercado por tipo de hotel para reservas de hoteis",
       caption=paste0("Dados de: ", mindate, " a ", maxdate))

#Limpando os rotulos do eixo x e eixo y
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparação de segmentos de mercado por tipo de hotel para reservas de hoteis",
       caption=paste0("Dados de: ", mindate, " a ", maxdate),
       x="Market Segment",
       y="Number of Bookings")

ggsave('hotel_booking_chart.png')

ggsave('hotel_booking_chart.png',
       width=16,
       height=8)
