wooldridge <- library(wooldridge)

bwght <- wooldridge::bwght

# i 
  # ¿Cuántas mujeres hay en la muestra (male  0) y 
  # cuántas de las informantes fumaron durante un embarazo?
  female <- nrow(bwght) # 1388 Mujeres
  smoking <- sum(bwght$cigs > 0, na.rm = TRUE) # 212 Mujeres fumaron durante el embarazo
  
# ii 
  # ¿Cuál es la cantidad promedio de cigarros consumidos por día (cigs)?
  # ¿Es el promedio, en este caso, una medida representativa de la mujer “típica”? Explique.
  mean_cigs <- mean(bwght$cigs, na.rm = TRUE) # 2.08 Cigarrillos al día
  sd_cigs <- sd(bwght$cigs, na.rm = TRUE) # 5.97
  smoking_mothers <- smoking * 100 / female # 15.2% de mujeres reportaron haber fumado
  no_smoking_mothers <- 100 - smoking_mothers # 84.7% de mujeres reportaron no haber fumado
  # El promedio no es una medida representativa de la mujer típica dado que solo el 15%
  # de las mujeres reportaron haber fumado

# iii
  # Entre las mujeres que fumaron durante el embarazo, 
  # ¿cuál es la cantidad promedio de cigarros consumidos por día? 
  # ¿Cuál es la relación de esto con su respuesta al inciso ii) y por qué?
  mean_smoking_mothers <- mean(bwght$cigs[bwght$cigs > 0], na.rm = TRUE) 
  # El promedio de cigarrillos fumados al día por las mujeres que reportaron haber fumado
  # es de 13.66 al día
  # Este promedio es representativo para el grupo de mujeres que sí fumaron durante el embarazo

# iv
  # Determine el promedio de fatheduc (años de educación del padre) en la muestra.
  # ¿Porqué se emplean sólo 1 192 observaciones para calcular este promedio?
  mean_father_education <- mean(bwght$fatheduc, na.rm = TRUE)
  # El promedio de años de eduación de los padres es de 13.18 años
  quantity_fathers <- sum(!is.na(bwght$fatheduc)) # 1192 registros No negativos ( Que es positivo)
  # Empleamos solo 1192 registros para calcular el promedio
  # porque de los demás padres no se registraron datos
  

# v 
  # Dé el ingreso familiar promedio (famine) y su desviación estándar en dólares
  mean_faminc = mean(bwght$faminc, na.rm = TRUE) # 29.020 USD
  sd_faminc = sd(bwght$faminc, na.rm = TRUE) # 18.739 USD
  USD_mean_faminc = mean_faminc * 1000 # 29,026 USD al año
  USD_sd_faminc = sd_faminc * 1000 # 18,739  USD al año
