########EJERCICIO 1.10.1
## Cambio directorio

cd CSB-master/unix/sandbox/

## Tamano del archivo de Marra2014_data.fasta

ls -lh ../data/Marra2014_data.fasta

## Cree una copia de Marra2014_data.fasta en sandbox y nombrar my_file.fasta

cp ../data/Marra2014_data.fasta my_archivo.fasta

## ¿Cuantos isogroup0036 hay?

grep isogroup00036 my_archivo.fasta | wc -l

## Reemplazar el delimitador con dos espacios y con una coma

cat my_archivo.fasta | tr -s "  " ","  > my_archivo.tmp
mv my_archivo.tmp my_archivo.fasta

## ¿Cuantos isogroup hay en el archivo?

grep '>' my_archivo.fasta | cut -d ',' -f 4 | sort | uniq | wc -l

## Conting el mayoy número de lecturas
grep '>' my_archivo.fasta | cut -d "," -f 1,3 | sort -t '=' -k 2 -n -r | head -n 1
