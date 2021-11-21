A = rand(3,3)
xex = rand(3,1)

b = A * xex

x = A\b

err_av = norm(x-xex)/norm(x)
err_ar = norm(b-A*xex)/(norm(A)*norm(xex))

disp(err_av)
disp(err_ar)

A = rand(100,100)
xex = rand(100,1)

b = A * xex

x = A\b

err_av = norm(x-xex)/norm(x)
err_ar = norm(b-A*xex)/(norm(A)*norm(xex))

disp(err_av)
disp(err_ar)

A = rand(1000,1000)
xex = rand(1000,1)

b = A * xex

x = A\b

err_av = norm(x-xex)/norm(x)
err_ar = norm(b-A*xex)/(norm(A)*norm(xex))

disp(err_av)
disp(err_ar)
