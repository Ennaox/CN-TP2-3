exec gausskij3b.sci

TAILLE_MAX = 20;
ITER_MAX = 1000;
[fic, mod] = mopen("gaussijk.dat", "w");
for TAILLE = 1:TAILLE_MAX
    err_av = 0;
    err_ar = 0;
    cond1 = 0;
    disp(string(TAILLE)+"/"+string(TAILLE_MAX));
    for  x = 1:ITER_MAX
        A = rand(TAILLE,TAILLE) + ones(TAILLE,TAILLE);
        b = rand(TAILLE,1) + ones(TAILLE,1);

        xex = A\b;
        x = gausskij3b(A,b);

        err_av = err_av + norm(xex-x)/norm(xex);
        err_ar = err_ar + norm(b-A*x)/(norm(A)*norm(x));
        cond1 = cond1 + cond(A);
    end
    mfprintf(fic, "%.17lf %.17lf %.17lf %d\n", err_av/ITER_MAX, err_ar/ITER_MAX, cond1/ITER_MAX, TAILLE);
end
mclose (fic);
