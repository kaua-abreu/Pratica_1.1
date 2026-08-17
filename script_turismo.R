# Leitura e manipulação do banco de dados
dados = read.csv("dados_turismo.csv", header=TRUE, sep=";")
str(dados)
summary(dados)
# attach(dados) -- Não funcionou

# Atribuindo legendas dos rótulos das variáveis sexo e estabelecimento
dados$sexo = factor(dados$sexo, levels = c(1, 2), labels = c("masculino", "feminino"))
dados$estabelecimento = factor(dados$estabelecimento, levels = c("P", "H"), labels = c("pousada", "hotel"))

# Análise de dados
# Tabelas de distribuição de frequências das variáveis sexo e estabelecimento
round(prop.table(table(dados$sexo)) * 100, 2)
round(prop.table(table(dados$estabelecimento)) * 100, 2)
round(prop.table(table(dados$sexo, dados$estabelecimento), margin = 2) * 100, 2)