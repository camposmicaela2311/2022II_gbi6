######
cat data/Gesquiere2011_data.csv | tr -s ";" " " > datafile.tmp
mv datafile.tmp data/Gesquiere20112_data.csv

ids=`tail -n +2 data/Gesquiere20112_data.csv | cut -d " " -f 1 | uniq`
for conejito in $ids
 do
num=`bash Ejercio1.10.2_conteo.sh data/Gesquiere20112_data.csv $conejito`
 echo "ID:" $conejito "Conteo:" $num
 done
