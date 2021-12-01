set term png size 1900,1000

set output "image/LU_time.png"

set grid

set ylabel "Temps"
set xlabel "Taille matrice nxn"

plot "data/LU.dat" using 5:2 t "my_LU3b" w lp, "data/LU.dat" using 5:2 t "my_LU1b" w lp;

set output "image/LU_err.png"
set ylabel "Erreur"

plot "data/LU.dat" using 5:1 t "my_LU3b" w lp, "data/LU.dat" using 5:3 t "my_LU1b" w lp;