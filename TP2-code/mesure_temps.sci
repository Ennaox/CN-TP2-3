exec matmat1b.sci
exec matmat2b.sci
exec matmat3b.sci
TAILLE_MAX = 100;
NB_ITER = 5;

[fic,mod] = mopen("data/mesure_temps.dat", "w");

for TAILLE = 10:TAILLE_MAX;
    disp(string(TAILLE)+"/"+string(TAILLE_MAX));
    A = rand(TAILLE,TAILLE);
    B = rand(TAILLE,TAILLE);
    tic();
    C = matmat1b(A,B);
    time1 = toc();
    tic();
    C = matmat2b(A,B);
    time2 = toc();
    tic();
    C = matmat3b(A,B);
    time3 = toc();
    mfprintf(fic, "%lf %lf %lf %d\n", time1, time2, time3, TAILLE);
end

mclose(fic);
