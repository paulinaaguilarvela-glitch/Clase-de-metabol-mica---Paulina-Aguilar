# Paulina Aguilar
# Metabolomica
# Grupo 2
# Portafolio 1

#Vector A
Pelicula <-c("Anora","The Brutalist","Flow","Emilia Perez","Wicked",
             "Dune:Part Two","Im Still Here")

#Vector B
Premios_Oscar_2025 <- c("Mejor Película, Mejor Director, Mejor Actriz, Mejor Guion Original, Mejor Montaje",
  "Mejor Actor, Mejor Fotografía, Mejor Banda Sonora",
  "Mejor Película de Animación",
  "Mejor Película Internacional",
  "Mejor Actriz de Reparto, Mejor Canción Original",
  "Mejor Sonido, Mejores Efectos Visuales",
  "Mejor Diseño de Vestuario, Diseño de Producción")

#Vector C
Mes_de_estreno <- c("Enero","Diciembre","Diciembre","Mayo","Noviembre","Marzo","Febrero")

#Vector D
Recaudacion_mundial_estimada <- c("41000000","41400000","728000000","714000000",
                                  "20000000","29900000","30000000")
Tabla2 <- data.frame(Pelicula,Premios_Oscar_2025,Mes_de_estreno,Recaudacion_mundial_estimada)
Tabla2
View(Tabla2)
