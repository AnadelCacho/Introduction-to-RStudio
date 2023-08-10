
############# Master in Data Science #################

###### Introduction to R #######



## 1. ASIGNACION DE VARIABLES

# Asignación de valores a variables
x <- 10
y <- 5

# Operaciones aritméticas con variables
suma <- x + y
resta <- x - y
multiplicacion <- x * y
division <- x / y
cacadevaca <- "silba"

# Imprimir el resultado
print(suma)
print(resta)
print(multiplicacion)
print(division)

### Borrar variables
rm(cacadevaca)

## 2. MANIPULACIÓN DE DATOS

# Importar un conjunto de datos desde un archivo CSV
# install.packages("readxl")

library(readxl)
datos <- read_excel("Desktop/Assembler Master/6. Curso de R/prueba_R_introduction.xlsx")
View(datos)

# Explorar el conjunto de datos
head(datos)  # Muestra las 6 primeras filas del conjunto de datos
str(datos)   # Muestra la estructura del conjunto de datos
summary(datos)  # Proporciona un resumen estadístico del conjunto de datos

# Crear un nuevo objeto con una columna calculada
datos$columna_nueva <- datos$id* 2

# Filtrar y seleccionar datos
subconjunto <- subset(datos, columna_nueva> 10)
columna_seleccionada <- datos$columna_nueva
print(columna_seleccionada)

# Realizar un gráfico de dispersión
plot(datos$age_mother, datos$age_father)






## 3. CREACION DE FUNCIONES

# Definir una función que calcule el área de un círculo
calcular_area_circulo <- function(radio) {
  area <- pi * radio^2
  return(area)
}

# Llamar a la función y almacenar el resultado
radio_circulo <- 5
area_circulo <- calcular_area_circulo(radio_circulo)
print(area_circulo)






## 4. VISUALIZACION DE DATOS

# Crear un gráfico de barras
nombres <- c("Manzanas", "Plátanos", "Naranjas")
cantidad <- c(10, 15, 8)

barplot(cantidad, names.arg = nombres, xlab = "Frutas", ylab = "Cantidad", main = "Ventas de frutas")

# Crear un gráfico de líneas
x <- 1:10
y <- x^2

plot(x, y, type = "l", xlab = "X", ylab = "Y", main = "Gráfico de líneas")

# Crear un gráfico de dispersión con ggplot2
#install.packages("ggplot2")
library(ggplot2)

datos <- data.frame(x = 1:10, y = 2:11)

ggplot(datos, aes(x, y)) +
  geom_point() +
  labs(x = "X", y = "Y", title = "Gráfico de dispersión")

