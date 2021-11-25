exec gausskij3b.sci

TAILLE = 10;

A = rand(TAILLE,TAILLE) + ones(TAILLE,TAILLE);
b = rand(TAILLE,1) + ones(TAILLE,1);

xex = A\b;
x = gausskij3b(A,b);

err_av = norm(xex-x)/norm(xex);
err_ar = norm(b-A*x)/(norm(A)*norm(x));


disp("Gausskij");
disp("Erreur avant");
disp(err_av);
disp("Erreur arrière");
disp(err_ar);
disp("Conditionnement:");
disp(cond(A));
