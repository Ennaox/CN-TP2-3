exec lsolve.sci
exec usolve.sci

TAILLE = 100;

M = rand(TAILLE,TAILLE) + ones(TAILLE,TAILLE);
U = triu(M);
L = tril(M);

b = rand(TAILLE,1) + ones(TAILLE,1);

xl_ref = L\b;
xl = lsolve(L,b);
err_av = norm(xl_ref-xl)/norm(xl_ref);
err_ar = norm(b-L*xl)/(norm(L)*norm(xl));

disp("lsolve")
disp("Erreur avant");
disp(err_av);
disp("Erreur arrière");
disp(err_ar);
disp("Conditionnement:");
disp(cond(L));

xu_ref = U\b;
xu = usolve(U,b);
err_av = norm(xu_ref-xu)/norm(xu_ref);
err_ar = norm(b-U*xu)/(norm(U)*norm(xu));
disp("usolve")
disp("Erreur avant");
disp(err_av);
disp("Erreur arrière");
disp(err_ar);
disp("Conditionnement:");
disp(cond(U));
