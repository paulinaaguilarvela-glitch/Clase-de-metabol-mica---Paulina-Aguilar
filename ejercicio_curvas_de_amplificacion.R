# Nombre: Paulina Aguilar
# Ejercicio curvas de amplificación 
install.packages("pacman")
library("pacman")
#pacman llama a otros paquetes y si no estan los instala

p_load("vroom",
       "dplyr",
       "ggplot2") #graficar
Garu <- vroom(file="https://raw.githubusercontent.com/ManuelLaraMVZ/resultados_PCR_practica/refs/heads/main/Amplif_grupo1_17022025.csv")
head(Garu)

Datos <- Garu %>%  # %>& significa que a la base de datosa anterior le haremos lo siguiente; exclusivo de deplyr
  # signos: a esa base de datos le vas a hacer lo siguiente: 
  select("Cycle",4) #Cycle eje x; despues numero de columna o nombre "C1"
                    # como si fuera una funcion f(x); la columna son los otros datos (y)

Datos
# primero correrlo y sale en el ambiente, después se llama con "datos"
Grafica <- ggplot(Datos,mapping = aes(x=Cycle,y=C1))+
# se trabaja con paquete: ggplot; cuales datos? Datos; que mapear? mapping 
# aes: asterik ; datos de ejes: x, y
  geom_line(color="#F7659A",
            size=1.5) + #tipo de grafica
  labs(x="Ciclos",
       y="Fluorescencia",
       title = "Gráfica de amplificación RT-qPCR",
       subtitle = "Muestra C1",
       caption = "Diseño: Paulina Aguilar")+
  geom_point(color="#E8DD92")+ #labels
  theme_classic()
Grafica
