vetor <- c(2,4,6,8,10)

indices <- which(vetor > 5)

print(indices)

valores <- vetor[indices] #atribuiu sem usar o for 

print(valores)

#Utilizando o for

#for(variavel in sequencia){ }

for(i in 1:5){
  print(i)
}

#Mostra os elementos dentro do vetor
for(i in vetor){
  print(i)
}
#Mostra os indices(elementos) dentro do incides
for(elemento in indices){
  print(elemento)
}
#busca, atraves do indice, o elemento no vetor
for(elem in indices){
  print(vetor[elem])
}

##########################################

#aggregate() -> É uma função usada para aplicar uma função de agregação a um conjunto de dados. Ela é especialmente útil para calcular
#estatísticas resumidas(como média, soma, mínimo, máximo etc.) para diferentes grupos de dados.

#aggregate(formula, data, FUN, ...)

dados <- data.frame(
  Grupo = rep(c("A", "B", "C"), each= 4),
  Valor = c(10,15,20,25,8,12,16,20,5,10,15,20)
)

resultado <- aggregate(Valor ~ Grupo, data= dados, FUN = mean)

print(resultado)

#Usando a função Vincenty para calcular a distancia 

library(geosphere)
dadoss <- data.frame(
  latitude = c(-23.5505, -23.5613, -23.5632, -23.578, -23.5897),
  longitude = c(-46.6333, -46.6555, -46.6558, -46.6771, -46.6576)
)

#calcular a distância entre pontos consecutivos usando a fórmula de Vincenty
distancias <- c (0, distVincentySphere(dadoss[-nrow(dadoss),], dadoss[-1,]))

print(distancias)




