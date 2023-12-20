data.frame(x=c(1,2,3), y=c(1.5, 5.5,7.5))

dir.create("/home/rafael/exerciciosR/teste1") #Criou o teste1
file.create("new_text_file.txt")
#Se o arquivo foi criado ao executar a função, R retornará um valor TRUE(caso contrário, retornará False).
file.copy("new_text_file.txt", "/home/rafael/exerciciosR/teste1")
file.create("teste.csv", "/home/rafael/exerciciosR/teste1")

#Usando o file.path()
file.create(file.path("/home/rafael/exerciciosR/teste1", "teste.csv"))

file.create(file.path("/home/rafael/exerciciosR/teste1", "teste3.csv"))

#Excluindo o arquivo
unlink("new_text_file.txt")

file.create("new_text_file.txt")

matrix(c(3:8), nrow = 2)

matrix(c(3:8), ncol=2)
