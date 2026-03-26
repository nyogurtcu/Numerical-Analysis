clear
A=[1 0; 1 1; 1 2];
[m,n] = size(A);
R=zeros(n);

for j = 1:n
    v = A(:, j);
    for i= 1:j-1
        R(i,j) = A(:,i)'*A(:,j);
        A(:,j) = A(:,j)-R(i,j)*A(:,i);
    end
    R(j, j) = norm(v);       
    Q(:, j) = v / R(j, j);   
end