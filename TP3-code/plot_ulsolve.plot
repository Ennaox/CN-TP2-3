set term png size 1900,1000

set output "image/err_av_ulsolve.png"

set grid

set ylabel "Erreur Avant"
set xlabel "Taille matrice nxn"

plot "data/l_solve.dat" using 4:1 t "Erreur Avant lsolve" w lp, "data/u_solve.dat" using 4:1 t "Erreur Avant usolve" w lp;

set output "image/cond_ulsolve.png"
set ylabel "Conditionnement"

plot "data/l_solve.dat" using 4:3 t "Conditionnement lsolve" w lp, "data/u_solve.dat" using 4:3 t "Conditionnement usolve" w lp;

set output "image/err_ar_ulsolve.png"

set ylabel "Erreur Arrière"
set yrange [1E-18:4E-17]

plot "data/l_solve.dat" using 4:2 t "Erreur Arrière lsolve" w lp, "data/u_solve.dat" using 4:2 t "Erreur Arrière usolve" w lp;
