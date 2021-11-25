A = rand(3,3)
xex = rand(3,1)

b = A * xex

x = A\b

err_av = norm(xex-x)/norm(xex)
err_ar = norm(b-A*x)/(norm(A)*norm(x))

disp("err_av")
disp(err_av)
disp("err_ar")
disp(err_ar)

A = rand(100,100)
xex = rand(100,1)

b = A * xex

x = A\b

err_av = norm(xex-x)/norm(xex)
err_ar = norm(b-A*x)/(norm(A)*norm(x))

disp("err_av")
disp(err_av)
disp("err_ar")
disp(err_ar)

A = rand(1000,1000)
xex = rand(1000,1)

b = A * xex

x = A\b

err_av = norm(xex-x)/norm(xex)
err_ar = norm(b-A*x)/(norm(A)*norm(x))

disp("err_av")
disp(err_av)
disp("err_ar")
disp(err_ar)

/* Exécution trop longue
A = rand(10000,10000)
xex = rand(10000,1)

b = A * xex

x = A\b

err_av = norm(xex-x)/norm(xex)
err_ar = norm(b-A*x)/(norm(A)*norm(x))

disp("err_av")
disp(err_av)
disp("err_ar")
disp(err_ar)
*/
