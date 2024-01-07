hotel_bookings<-read_csv("/home/rafael/Downloads/hands-on activity-cleaning data in R2_POR.csv")

head(hotel_bookings)
str(hotel_bookings)
glimpse(hotel_bookings)
colnames(hotel_bookings)
arrange(hotel_bookings,- lead_time) #Ordenado por ordem decrescente
arrange(hotel_bookings, desc(lead_time)) #Ordenado por ordem decrescente
max(hotel_bookings$lead_time)#Tempo maximo de espera

min(hotel_bookings$lead_time)#Tempo minimo de espera

mean(hotel_bookings$lead_time)

hotel_bookings_city <- filter(hotel_bookings, hotel_bookings$hotel=="City Hotel")
head(hotel_bookings_city)
mean(hotel_bookings_city$lead_time)

hotel_summary <-
  hotel_bookings %>% 
  group_by(hotel) %>% 
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))

head(hotel_summary)

mean(hotel_summary$average_lead_time)

mean(hotel_bookings$lead_time)

penguins %>%  filter(species == "Gentoo")
view(penguins)
mutate(penguins, total_teste= bill_length_mm * bill_depth_mm)

rename_with(penguins, toupper)
