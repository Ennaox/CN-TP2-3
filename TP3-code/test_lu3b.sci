exec mylu3b.sci
exec mylu1b.sci

TAILLE_MAX = 100;
NB_ITER = 5;

[fic, mod] = mopen("data/LU.dat", "w");

for TAILLE = 1:TAILLE_MAX
    time3b = 0.0;
    time1b = 0.0;
    verif_LU3b = 0.0;
    verif_LU1b= 0.0;
    disp(string(TAILLE)+'/'+string(TAILLE_MAX));
    for i = 1:NB_ITER
        A = rand(TAILLE,TAILLE) + ones(TAILLE,TAILLE);
        tic();
        [L,U] = mylu3b(A);
        time3b = time3b + toc();
        verif_LU3b = verif_LU3b + norm(A - L*U);

        tic();
        [L2,U2] = mylu1b(A);
        time1b = time1b + toc();
        verif_LU1b = verif_LU1b + norm(A - L2*U2);
    end
    mfprintf(fic, "%.17lf %.17lf %.17lf %.17lf %d\n", verif_LU3b/NB_ITER, time3b/NB_ITER, verif_LU1b/NB_ITER, time1b/NB_ITER, TAILLE);
end
mclose (fic);
