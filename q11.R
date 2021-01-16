# Instalando os pacotes necessários
install.packages("tidyverse")
install.packages("dplyr")
install.packages("ggplot2")

# Baixando os pacotes necessários 
library(tidyverse)
library(dplyr)
library(ggplot2)

# Criando o data frame 
q11 <- data.frame(
  regioes_metro = c("São Paulo", "Rio de Janeiro", "Belém", "Belo Horizonte", "Salvador", "Porto Alegre", "Recife", "Fortaleza"), 
  setor_primario = c(2.0, 2.5, 2.9, 3.3, 4.1, 4.3, 7.0, 13.0),
  i_analfabetismo = c(17.5, 18.5, 19.5, 22.2, 26.5, 16.6, 36.6, 38.4)
)

# Sumário estatístico do conjunto de dados
summary(q11)

# Plotando o diagrama de dispersão 
ggplot(q11, aes(x = setor_primario, y = i_analfabetismo)) + 
  geom_point() +
  labs(title = "Analfabetismo e Empregos no Setor Primário por Região Metropoliatana", subtitle = "Dados para 1977, em %.", x = "Empregos no Setor Primário (%)", y = "Índice de Analfabetismo (%)")

# Teste de correlação de Pearson
cor.test(q11$setor_primario,
         q11$i_analfabetismo)

# Excluindo as observações discrepantes para POA
q11_s_POA <- q11 %>% 
  slice(1:5, 7:8)
q11_s_POA

# Teste de correlação de Person
cor.test(q11_s_POA$setor_primario,
         q11_s_POA$i_analfabetismo)

# Novo diagrama de dispersão sem POA
ggplot(q11_s_POA, aes(x = setor_primario, y = i_analfabetismo)) + 
  geom_point() +
  labs(title = "Analfabetismo e Empregos no Setor Primário por Região Metropoliatana", subtitle = "Dados para 1977, em %.", x = "Empregos no Setor Primário (%)", y = "Índice de Analfabetismo (%)")

