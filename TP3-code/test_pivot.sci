exec mylu.sci

A = rand(5,5);
[L1,U1,P1] = mylu(A);
[L2,U2,P2] = lu(A);
disp(L1);
disp(L2);
disp(U1);
disp(U2);
disp(P1);
disp(P2);
