x = [1,2,3,4]
y = [1;2;3;4]
s = x*y
//z = x + y -> Erreur x et y ne possèdent pas les même dimensions

y = [1,2,3,4]
z = x + y

size_x = size(x)
size_y = size(y)
norme_2_x = norm(x,2)

A = [1,2,3;1,2,3;1,2,3;1,2,3]
B = A'

A = [1,2;1,2]
B = [1,2;3,4]

C = A + B
D = A * B
E = A - B

cond_ = cond(A)
