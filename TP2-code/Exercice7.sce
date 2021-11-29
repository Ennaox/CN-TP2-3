ITER = 20;
MAX_TAILLE = 1010;

[fic,mod] = mopen("data/Exercice7.dat", "w");

for TAILLE = 10:100:MAX_TAILLE
    err_av = 0;
    err_ar = 0;
    cond1 = 0;
    disp(string(TAILLE)+"/"+string(MAX_TAILLE))
    for i = 1 : ITER
        A = rand(TAILLE,TAILLE) + ones(TAILLE,TAILLE);
        xex = rand(TAILLE,1) + ones(TAILLE,1);
        b = A*xex;
        x = A\b;
        err_av = err_av + norm(xex - x)/norm(xex);
        err_ar = err_ar + norm(b - A*x)/(norm(A)*norm(x));
        cond1 = cond1 + cond(A);
    end

   mfprintf(fic, "%.17lf %.17lf %.17lf %d\n", err_av/ITER, err_ar/ITER, cond1/ITER, TAILLE);
end
mclose(fic);
