set term png size 1900,1000

set output "image/err_av_ex7.png"

set grid

set ylabel "Erreur"
set xlabel "Taille matrice nxn"

plot "data/Exercice7.dat" using 4:1 t "Erreur Avant Exercice 7" w lp;

set output "image/cond_ex7.png"
set ylabel "Conditionnement"

plot "data/Exercice7.dat" using 4:3 t "Conditionnement Exercice 7" w lp;

set output "image/err_ar_ex7.png"
set ylabel "Erreur"

plot "data/Exercice7.dat" using 4:2 t "Erreur Arrière Exercice 7" w lp;