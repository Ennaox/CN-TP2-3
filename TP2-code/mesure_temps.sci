exec ./matmat1b.sci
exec ./matmat2b.sci
exec ./matmat3b.sci

//Mesure du temps pour des matrice de tailles 10x10
i = 10;
A = rand(i,i);
B = rand(i,i);
tic();
C = matmat1b(A,B);
time = toc();
disp("Temps d éxécution de matmat1b avec matrice de taille 10x10:");
disp(time);
    
A = rand(i,i);
B = rand(i,i);
tic();
C = matmat2b(A,B);
time = toc();
disp("Temps d éxécution de matmat2b avec matrice de taille 10x10:");
disp(time)  ;
    
 A = rand(i,i);
 B = rand(i,i);
 tic();
 C = matmat3b(A,B);
 time = toc();
 disp("Temps d éxécution de matmat3b avec matrice de taille 10x10:");
 disp(time);
 
 //Mesure du temps pour des matrice de tailles 100x100
i = 100;
A = rand(i,i);
B = rand(i,i);
tic();
C = matmat1b(A,B);
time = toc();
disp("Temps d éxécution de matmat1b avec matrice de taille 100x100:");
disp(time);    
    
A = rand(i,i);
B = rand(i,i);
tic();
C = matmat2b(A,B);
time = toc();
disp("Temps d éxécution de matmat2b avec matrice de taille 100x100:");
disp(time);  
    
 A = rand(i,i);
 B = rand(i,i);
 tic()
 C = matmat3b(A,B);
 time = toc()
 disp("Temps d éxécution de matmat3b avec matrice de taille 100x100:")
 disp(time)  

//Mesure du temps pour des matrice de tailles 1000x1000
i = 1000
A = rand(i,i);
B = rand(i,i);
tic()
C = matmat1b(A,B);
time = toc()
disp("Temps d éxécution de matmat1b avec matrice de taille 1000x1000:")
disp(time)    
    
A = rand(i,i);
B = rand(i,i);
tic();
C = matmat2b(A,B);
time = toc()
disp("Temps d éxécution de matmat2b avec matrice de taille 1000x1000:");
disp(time);  
    
 A = rand(i,i);
 B = rand(i,i);
 tic();
 C = matmat3b(A,B);
 time = toc();
 disp("Temps d éxécution de matmat3b avec matrice de taille 1000x1000:");
 disp(time);  
