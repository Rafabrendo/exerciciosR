penguins %>% arrange(bill_length_mm)
#This command it will return a tibble with data sorted by bill lengths.
#It's currently in ascending order.

penguins %>% arrange(- bill_length_mm)
#descending order

pinguins2 <- penguins %>% arrange(- bill_length_mm)

View(pinguins2)
