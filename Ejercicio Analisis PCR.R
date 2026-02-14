# Nombre: Paulina Aguilar
# Ejercicio Analisis PCR
install.packages("pacman")
library("pacman")
#pacman llama a otros paquetes y si no estan los instala

p_load("vroom", #llamar bases de datos
       "dplyr", #facilita el manejo de datos
       "ggplot2") #graficar 

Datos_PCR <- #correr datos
  vroom(file = "https://raw.githubusercontent.com/ManuelLaraMVZ/resultados_PCR_practica/refs/heads/main/Genes.csv")

Datos_PCR #llamar datos

#crear una ueva base de datos sin los datos del gen de referencia para después hacer la resta y calcular 2DDCT

Gen_ref <- Datos_PCR %>%  # a la base de datos PCR le haras lo siguiuente
  filter(Gen == "B-actina")#seleccionar filas; == exactamente igual/identico
Gen_ref

#genes de interes sin beta actina: referencia
Gen_int <- Datos_PCR %>% 
  filter(Gen !="B-actina") # !: todos excepto
Gen_int

DCT <- Gen_int %>%
  mutate(DCTC1= C1- Gen_ref$C1,
         DCTC2= C2 - Gen_ref$C2,
         DCTC3= C3 - Gen_ref$C3,
         DCTT1= T1 - Gen_ref$T1,
         DCTT2= T2 - Gen_ref$T2,
         DCTT3= T3 - Gen_ref$T3) #mutate sirve para crear nuevas columnas
DCT
