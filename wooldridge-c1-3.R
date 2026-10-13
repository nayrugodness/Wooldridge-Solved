wooldridge <- library(wooldridge)

# Michigan Educational Assessment Program
# Programa de Evaluación Educativa de Michigan
MEAP01 <- wooldridge::meap01

#i 
  # Determine los valores mayor y menor de math4.
  # ¿Es lógico este intervalo? Explique.
  math4_max <- max(MEAP01$math4) # 100
  math4_min <- min(MEAP01$math4) # 0
  
# ii
  # ¿Cuántas escuelas tienen una tasa perfecta 
  # de aprobados en el examen de matemáticas?
  perfect_math <- length(MEAP01$bcode[MEAP01$math4 == 100]) #38
  total_schools <- length(MEAP01$bcode) #1823 escuelas
  # De las 1823 escuelas , 38 tienen aprobados en matemáticas con un puntaje perfecto
  # ¿A qué porcentaje del total de la muestra corresponde esta cantidad?
  percentaje_schools <- (perfect_math * 100 / 1823) # 2.08%
  # El 2.08 % de las escuelas tienen estudiantes que aprobaron con 100 puntos
  # los exámenes de matemáticas
  
# iii 
  # ¿En cuántas escuelas la tasa de aprobados en matemáticas es 
  # exactamente 50%?
  # Hay 17 escuelas donde los estudiantes aprobaron matemáticas con el 50 porciento
  half_math <- length(MEAP01$bcode[MEAP01$math4 == 50]) #17
  
# iv
  # Compare el promedio de las tasas de aprobados en matemáticas 
  # y en lectura. ¿Cuál de estas pruebas es más difícil de aprobar?
  mean_math_approved <- mean(MEAP01$math4) # 71.90% Aprobaron matematicas
  mean_read_approved <- mean(MEAP01$read4) # 60.06% Aprobaron lectura
  difference <- mean_math_approved - mean_read_approved # 11.84%
  # Aprobar lectura es 11.84% más difícil para los niños que aprobar matemáticas
  
# v 
  # Encuentre la correlación entre math4 y read4. ¿Qué concluye?
  cor_math4_read4 <- cor(MEAP01$math4, MEAP01$read4) # 0.84 
  # La correlación entre los resultados en matemáticas y lectura son directamente 
  # proporcinales en un 84% 

# vi 
  # La variable exppp es gasto por alumno. Determine el promedio 
  # y la desviación estándar de exppp. ¿Parece haber una gran 
  # variación en el gasto por alumno?
  mean_exppp <- mean(MEAP01$exppp) # 5,194 USD
  sd_exppp <- sd(MEAP01$exppp) # 1,091 USD
  variation <- sd_exppp / mean_exppp # 0.21 = 21% de variación
  # La variación del gasto por alumno es de 21%, es una variación moderada
   
# vii
  # Suponga que la escuela A gasta 6 000 dólares por alumno y 
   # la escuela B gasta 5 000 dólares por alumno. Dé el porcentaje en el 
   # que el gasto de la escuela A supera al gasto de la
   # escuela B. Compare este porcentaje con 100 · [log(6 000) – log(5 500)], 
   # que es la diferencia porcentual aproximada basada en la diferencia de 
   # los logaritmos naturales.
   school_A <- 6000 # 120% 
   school_B <- 5000 # 100%
   x <- ((school_A - school_B) / school_B) # 0.2% 20%
   h <- ((school_B - school_A) / school_A) # -0.16% -16%
   k <- ((school_A * 100) / school_B) #120%
   
   l <- 100 * (log(6000) - log(5000)) # | 18.23% |
   m <- 100 * (log(5000) - log(6000)) # | -18.23% |
   
   
   
   
   
   
   
                                                                                                                                                                            sección A.4 del apéndice A.)
   
                                                                                                                                                                            sección A.4 del apéndice A.)
   
   
   
                                                                                                                                                                            sección A.4 del apéndice A.)
   

   
