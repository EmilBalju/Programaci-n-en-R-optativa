#Califcacion 3 pts.
#Para leer la base de datos 
library("dplyr")
library("ggplot2movies")

#########################
##Ejercicio 1 (3 pts.)###
#########################

#La siguiente base de datos contiene información diversa sobre peliculas
head(movies)
#La funcion str les permite obtener un panorama de la base e datos en cuanto al tipo de variables
str(movies)
#La función da la descripción de cada una de las columnas de la base de datos
?movies

#a) Para las peliculas de acción que tengan un presupuesto disponible,
#calcula la media de su duración y la media de su presupuesto utilizando
#la funcion pipe 0.5 pts

#b) Calcula el presupuesto promedio por cada año para todas las 
#peliculas que tengan un presupuesto, utiliza la funcion pipe 0.5 pts


#c) Crea una nueva columna que calcule el presupuesto por minuto 
#de cada pelicula, luego calcula el precio promedio y la desviacion
#estandar de la duracion por minuto para las peliculas que son 
#de comedia y las que no lo son, usa la funcion pipe 0.5 pts. 

  
  

#d) Calcula el rating promedio para las peliculas 
#que  salieron a partir del año 2000 y ordenalos de menor  
#a mayor, utiliza la función pipe  0.5 pts. 


#e) Crea un nuevo data frame con las columnas year, length, budget (simepre que hayan datos)
#y rating, cambiando los nombres a ano, duracion, presupuesto, rating
#ordena los anos del mas reciente al más antiguo, segudo de la duracióm
#de la mas larga a la más corta, utiliza la función pipe 0.4 pts




#f) Del ejercicio anterior, obtén el maximo de la 
#duracion, presupuesto y rating para cada uno de los años para
#los últimos 10 años, utilizando los nombres d.max, p.max
#y r.max (Nota: no se puede usar la funcion rename), utiliza
#la funcion pipe 0.1 pts



#g) Con los filtros del ejercicio 5 calcula el presupuesto por 
#minuto para las peliculas que tienen rating mayor o igual a 8, 
#posteriormente, calcula el presupuesto por minuto para cada año
#utiliza el nombre p.min.p para esa columna, utiliza la función
#pipe 0.5 pts. 


#########################
##Ejercicio 2 (2 pts.)###
#########################

#Consideremos la base de datos con la que trabajamos en actividades anteriores: 
bdtaxi<-read.csv("https://www.dropbox.com/s/cqvuu3byzxfk5hf/programacion.csv?dl=1", header=TRUE)
str(bdtaxi)

#a) Genera un resumen en donde la primer columna contenga a los niveles del factor "Tipo" y la segunda 
#columna tenga la suma de la columna Total  (0.5 pts.)



#b) Crea un resumen en donde la primer columna contenga el mes correspondiente, la segunda la suma 
#de los pasajeros transportados en dicho mes (con el nombre de columna Pasajeros.Ida) y la tercera
#el la media de la columna total (con el nombre e columna Ingreso.Promedio) (0.5 pts.)



#c) Se quiere conocer el monto total de cuotas pagadas por mes, general un tibble que de respuesta a esta 
#interrongante (0.5 pts.)

bdtaxi2c <- bdtaxi %>%
  filter(Concepto == 'Cuota') %>%
  group_by(Mes) %>%
  summarise(montototaldecuotas = sum(Total))

#d) Se desea conocer por mes, a cuanto ascienden los ingresos y gastos totales, excluyendo los conceptos de 
#bono y cuotas de los gastos y manteniendo todo lo demas. Generar un tibble en donde la primer columna muestre
#el mes en cuestion, la segunda columna debe de indicar si se trata del ingreso o del gasto y la última 
#columna debe mostrar la cifra a la que asciende. #0.5 pts.

bdtaxi2d <- bdtaxi %>%
  filter(Concepto != 'Bono' & Concepto !='Cuota') %>%
  group_by(Mes,Tipo) %>%
  summarize(Cifra=sum(Total))
  

