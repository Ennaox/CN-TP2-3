set term png size 1900,1000

set output "image/err_av_gaussijk.png"

set grid

set ylabel "Erreur Avant"
set xlabel "Taille matrice nxn"

plot "data/gaussijk.dat" using 4:1 t "Erreur Avant lsolve" w lp;

set output "image/cond_gaussijk.png"
set ylabel "Conditionnement"

plot "data/gaussijk.dat" using 4:3 t "Conditionnement lsolve" w lp;

set output "image/err_ar_gaussijk.png"

set ylabel "Erreur Arrière"

plot "data/gaussijk.dat" using 4:2 t "Erreur Arrière lsolve" w lp;