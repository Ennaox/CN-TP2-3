function [L,U,P] = mylu(A)
n = size(A,1);
P = zeros(n);
for i = 1 : n
    P(1,i) = i;
end
for k = 1 : n - 1
    [piv, ind] = max(abs(A(k : n,k)));
    ind = k - 1 + ind;
    q = P(1,ind);
    if ind ~= k then

            tmp = A(ind,:);
            A(ind,:) = A(k,:);
            A(k,:) = tmp;
            P(1,ind) = P(1,k);
            P(1,k) = q;

        end
end

 for i = k : n - 1
       A(k+1:n, k) = A(k+1:n, k)/A(k, k);
       A( k + 1 : n,  k + 1 : n) = A( k + 1 : n,  k + 1 : n) - A( k + 1 : n, k) * A(k,  k + 1 : n);
end
U = triu(A);
L = tril(A);
for k = 1 : n
    L(k,k) = 1;
end
endfunction
