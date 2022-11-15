#### EJERCICIO 1.10.2

##¿Cuántas veces se registraron los niveles de los individuos 3 y 27?

cut -d  ";" -f 1 data/Gesquiere2011_data.csv | grep -w 3 | grep -c 3 #Registro de individuos 3
cut -d  ";" -f 1 data/Gesquiere2011_data.csv | grep -w 27 | grep -c 27 # Registro de individuo 27

##Escribe un script tomando como entrada el nombre del archivo y el ID del individuo y devolviendo el número de registros para ese ID.



##Escriba un script que devuelva el número de veces que cada individuo fue muestreado
