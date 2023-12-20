install.packages("tidyverse", type = "source")
library(tidyverse)
#install.packages("tidyverse", repos = "http://cran.us.r-project.org")
#library(tidyverse)
library(lubridate)

today() # vai me dar data atual
now() #Vai obter a data-hora atual

#Converter a partir de strings
ymd("2021-01-20") #Retorna a data no formato aaaa-mm-dd
#year month data
mdy("January 20th,2021") #Retorna a data no formato aaaa-mm-dd

dmy("20-jan-2021")
#converte no formato aaaa-mm-dd

ymd_hms("2021-01-20 20:11:59")
mdy_hm("01/20/2021 08:01")

as_date(now())
