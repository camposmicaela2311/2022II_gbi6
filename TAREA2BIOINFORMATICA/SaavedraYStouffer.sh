##EJERCICIO 1.10.3 Saavedra y Stouffer
cat Saavedra2013/n1.txt | wc -l
head -n 1 Saavedra2013/n1.txt | tr -d " " | tr -d "\n" | wc -c
###
for conejito in Saavedra2013/n*.txt
do
 i=`cat $conejito | wc -l`
j=`head -n 1 $conejito | tr -d " " | tr -d "\n" | wc -c`
echo $conejito "Filas:" $i "Columnas:" $j
done

