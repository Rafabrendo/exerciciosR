library(ggplot2)
library(palmerpenguins)

ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species))+facet_wrap(~species)
#Vai criar grupos menores 

ggplot(data=diamonds)+geom_bar(mapping = aes(x=color, fill=cut))+facet_wrap(~cut)
#Vai criar grupos de fair, good, very good, premium e ideal...

ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species))+facet_grid(sex~species)

ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species))+facet_grid(~species)

ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species))+facet_grid(~sex)


hotel_bookings <-read_csv("/home/rafael/Downloads/hands-on activity-cleaning data in R2_POR.csv")
head(hotel_bookings)
colnames(hotel_bookings)

ggplot(data=hotel_bookings)+geom_bar(mapping=aes(x=distribution_channel, fill=distribution_channel))

ggplot(data=hotel_bookings)+geom_bar(mapping=aes(x=distribution_channel, fill=deposit_type))

ggplot(data=hotel_bookings)+geom_bar(mapping=aes(x=distribution_channel, fill=market_segment))

ggplot(data=hotel_bookings)+geom_bar(mapping=aes(x=distribution_channel, fill=market_segment))

ggplot(data=hotel_bookings)+geom_bar(mapping=aes(x=distribution_channel, fill=market_segment))+facet_wrap(~deposit_type)

ggplot(data=hotel_bookings)+geom_bar(mapping=aes(x=distribution_channel, fill=market_segment))+facet_wrap(~deposit_type)+theme(axis.text.x = element_text(angle=45))

ggplot(data=hotel_bookings)+geom_bar(mapping=aes(x=distribution_channel, fill=market_segment))+facet_grid(~deposit_type)+theme(axis.text.x = element_text(angle=45))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))
