library('ggplot2')
library('palmerpenguins')

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman")

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", subtitle = "Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500,label="The Gentoos are the largest",color="purple")


ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", subtitle = "Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500,label="The Gentoos are the largest",color="purple",
           fontface="bold", size=4.5)

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", subtitle = "Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500,label="The Gentoos are the largest",color="purple",
           fontface="bold", size=4.5, angle=25)

p <- ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", subtitle = "Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman")

p+annotate("text",x=220,y=3500,label="The Gentoos are the largest")

#Adicionando linhas
dados <- data.frame(x=1:10, y=2*(1:10)+rnorm(10))

ggplot(dados, aes(x, y))+
  geom_point()+
  geom_smooth(method="lm")

#Adicionando setas
dados_v2 <- data.frame(x=1:10, y=2*(1:10)+rnorm(10))

p <- ggplot(dados_v2, aes(x, y))+
  geom_point()

p+geom_segment(aes(x=5, y=10, xend=7, yend=15), arrow=arrow(length=unit(0.3, "inches")))

#Adicionando formas
dados_v3 <- data.frame(x=rnorm(50), y=rnorm(50))

#criando grafico de dispersão com elipses
ggplot(dados, aes(x, y))+
  geom_point()+
  stat_ellipse(aes(color='red'), level=0.95)

#Usando a função ggsave() que vai salvar meu ultimo gráfico
ggsave("Gráfico de dispersão  com elipse.png")

png(file="Gráfico de dispersão com elipse_v2.png", bg="transparent")
plot(1:10)
rect(1, 5, 3, 7, col = "white")
dev.off()
