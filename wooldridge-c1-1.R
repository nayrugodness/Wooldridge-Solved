wooldridge = library(wooldridge)

wage1_raw = wooldridge::wage1

# i
  # Determine el nivel educativo promedio de la muestra. 
  # ¿Cuáles son los niveles de educación menor y mayor?
  # El promedio o media de la muestra es 12 años
  mean_education = mean(wage1_raw$educ)
  
  # Mayor nivel de educación 18 años
  max_education = max(wage1_raw$educ)
  # Menor nivel de educación 0 años
  min_education = min(wage1_raw$educ)

# ii
  # Determine el salario promedio por hora (wage) $5.89 USD 
  # en la muestra. ¿Parece ser alto o bajo? 
  # Media o promedio  $5.89 USD 
  wage_mean_per_hour = mean(wage1_raw$wage)
  # Mediana para el salario promedio $4.65 USD
  wage_median_per_hour =  median(wage1_raw$wage)
  # Moda para el salario promedio $ 3 USD
  wage_mode_per_hour = Mode(wage1_raw$wage)
  
  # Media > Mediana > Moda Pareciera ser un salario alto
  
# iii
  #Los datos de los salarios están dados en dólares de 1976.
  # Usando el Economic Report of the President (de 2004 o 
  # posterior o el Informe de Gobierno en países de habla 
  # hispana) obtenga y dé los índices de precios al consumidor 
  #(IPC) correspondientes a 1976 y 2003.
  IPC_1976 = 171.0
  IPC_2003 = 567.6
  
# iv
  # Use los valores de los IPC del inciso 
  # para determinar el salario promedio por hora en
  # dólares de 2003. ¿Parece ahora más razonable el salario promedio por hora?
  factor = IPC_2003/IPC_1976 # factor es de 3.31 inflación
  salary_2003 =  wage_mean_per_hour * factor # 19.57 USD la hora
  # El salario reportado por las autoridades para el 2003 de 5.15 USD la hora
  # es bajo en comparación con el salario por hora de 1976 porque tiene menos
  # poder adquisitivo

# v 
  # ¿Cuántas mujeres (females) hay en la muestra? ¿Cuántos hombres?
  female = sum(wage1_raw$female == 1) # 252 Mujeres
  men = sum(wage1_raw$female == 0) # 274 Hombres
  population = female + men # Tamaño de muestra de 567
