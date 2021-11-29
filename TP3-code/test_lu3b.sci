exec mylu3b.sci

TAILLE = 5;

A = rand(TAILLE,TAILLE) + ones(TAILLE,TAILLE);

[L,U] = mylu3b(A);

verif_LU = A - L*U;
disp(norm(verif_LU));
