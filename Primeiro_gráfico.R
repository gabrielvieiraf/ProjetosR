# Utilizando Gráficos de Barras
cursos <- c("Eng. Eletrônica","Eng. de Software","Ciê. da computação")
n_aprovados <- c(10,30,20)
n_reprovados <- c(20,0,10)

# Gráfico de barras Horizontal
barplot(n_aprovados, names.arg=cursos, main="Aprovação por Curso",
        xlab= "Cursos", ylab="Aprovação", cex.lab=0.5,
        cex.axis = 0.5, cex.names = 0.5, horiz = 1, col = c(1,2,3),
        border = F)

# cex.main  --- valor título
# cex.lab   --- Valor eixos
# cex.axis  --- Numeros dos eixos
# cex.sub   --- Valor sub titulo

# axes F    --- Ocultação dos eixos
# border F  --- Ocultação de bordas
# horiz = 1 --- Horizontal

# Gráfico de barras aprovados  / Reprovados

#colors()   --- Cores

ind_aprov = matrix(c(n_aprovados,n_reprovados), nrow=3,
                   ncol=2, dimnames = list(cursos,c("Aprovados","Reprovados")))
ind_aprov

barplot(ind_aprov, main = "Aprovação por Curso", ylab="nº Alunos",
        xlab = "Estado")

barplot(ind_aprov, main = "Aprovação por Curso", ylab="nº Alunos",
        xlab = "Estado", beside = T, col = c(1,2,3),
        legend.text = rownames(ind_aprov), ylim = c(0,50),
        legend.size = 0.5, fill = 1:6, ncol = 2)
