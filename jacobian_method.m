clear; 
A= [ 3 1 -1; 1 -4 2; -2 -1 5];
b=[3; -1; 2];
x = [0; 0; 0];
r=b-A*x;

for i=1:(length(A))
    M(i,i) = A(i,i);
end

for k=1
    x=x+inv(M)*r;
end
