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

# Medidas descritivas para as variáveis duração e valor
quantile(dados$duracao, c(0.25, 0.50, 0.75))
mean(dados$duracao)
sd(dados$duracao)

# Convertendo valor antes de usar as medidas descritivas
dados$valor <- as.numeric(dados$valor)

quantile(dados$valor, c(0.25, 0.50, 0.75), na.rm=TRUE)
mean(dados$valor, na.rm=TRUE)
sd(dados$valor, na.rm=TRUE)