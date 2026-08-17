# Leitura e manipulação do banco de dados
dados = read.csv("dados_turismo.csv", header=TRUE, sep=";")
str(dados)
summary(dados)
# attach(dados) -- Não funcionou

# Atribuindo legendas dos rótulos das variáveis sexo e estabelecimento
dados$sexo = factor(dados$sexo, levels = c(1, 2), labels = c("masculino", "feminino"))
dados$estabelecimento = factor(dados$estabelecimento, levels = c("P", "H"), labels = c("pousada", "hotel"))