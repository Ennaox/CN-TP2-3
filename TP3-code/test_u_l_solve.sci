exec lsolve.sci
exec usolve.sci

TAILLE_MAX = 100;
ITER_MAX = 100;

[fic1, mod1] = mopen("l_solve.dat", "w");
[fic2, mod2] = mopen("u_solve.dat", "w");

for TAILLE = 1:TAILLE_MAX
    err_av1 = 0;
    err_ar1 = 0;
    err_av2 = 0;
    err_ar2 = 0;
    cond1 = 0;
    cond2 = 0;
    disp(string(TAILLE)+"/"+string(TAILLE_MAX));
    for x = 1:ITER_MAX

        M = rand(TAILLE,TAILLE) + ones(TAILLE,TAILLE);
        U = triu(M);
        L = tril(M);

        b = rand(TAILLE,1) + ones(TAILLE,1);

        xl_ref = L\b;
        xl = lsolve(L,b);
        err_av1 = err_av1 + norm(xl_ref-xl)/norm(xl_ref);
        err_ar1 = err_ar1 + norm(b-L*xl)/(norm(L)*norm(xl));
        cond1 = cond1 + cond(L);
        
        xu_ref = U\b;
        xu = usolve(U,b);
        err_av2 = err_av2 + norm(xu_ref-xu)/norm(xu_ref);
        err_ar2 = err_ar2 + norm(b-U*xu)/(norm(U)*norm(xu));
        cond2 = cond2 + cond(U);

    end 
    mfprintf(fic1, "%.17lf %.17lf %.17lf %d\n", err_av1/ITER_MAX, err_ar1/ITER_MAX, cond1/ITER_MAX, TAILLE);
    mfprintf(fic2, "%.17lf %.17lf %.17lf %d\n",  err_av2/ITER_MAX, err_ar2/ITER_MAX, cond2/ITER_MAX, TAILLE);
end
mclose (fic1);
mclose(fic2);
