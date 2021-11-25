exec lsolve.sci
exec usolve.sci

M = rand(10,10);
U = triu(M);
L = tril(M);

b = rand(10,1);

xl_ref = L\b;
xl = lsolve(L,b);
disp("solution trouvée:");
disp(xl);
err_av = norm(xl_ref-xl)/norm(xl_ref);
err_ar = norm(b-L*xl)/(norm(L)*norm(xl));
disp("Erreur avant");
disp(err_av);
disp("Erreur arrière");
disp(err_ar);

xu_ref = U\b;
xu = usolve(U,b);
disp("solution trouvée:");
disp(xu);
err_av = norm(xu_ref-xu)/norm(xu_ref);
err_ar = norm(b-U*xu)/(norm(U)*norm(xu));
disp("Erreur avant");
disp(err_av);
disp("Erreur arrière");
disp(err_ar);
