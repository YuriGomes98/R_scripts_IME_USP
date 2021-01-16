# Carregamento dos pacotes necessários 
library(dplyr)
library(tidyverse)
library(ggplot2)

# Criação do DataFrame 
gp3_qi <- data.frame(
  classes_de_renda = c(300, 500, 700, 900, 1100, 1200),
  porcentagem_acumulada = c(0, 10, 53.33, 83.33, 86.67, 100)
)

# Montagem do diagrama de dispersão 
ggplot(gp3_qi, aes(x = classes_de_renda, y = porcentagem_acumulada, group = 1)) + 
  geom_line() + 
    ggtitle("% Acumulada para Classes de Renda")+
      labs(x = "Classes de Renda", y = "% acumulada")+
        scale_x_continuous(limits = c(300, 1200))+
       theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))