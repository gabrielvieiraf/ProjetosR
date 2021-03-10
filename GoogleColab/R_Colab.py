# Ativando R magic
%load_ext rpy2.ipython

%%R
# Utilizando Exemplo Gráficos de Barras
cursos <- c("Eng. Eletrônica","Eng. de Software","Ciê. da computação")
n_aprovados <- c(10,30,20)
n_reprovados <- c(20,0,10)

# Gráfico de barras Horizontal
barplot(n_aprovados, names.arg=cursos, main="Aprovação por Curso",
        xlab= "Cursos", ylab="Aprovação", cex.lab=1,
        cex.axis = 1, cex.names = 1, horiz = 0, col = c(1,2,3),
        border = F)
