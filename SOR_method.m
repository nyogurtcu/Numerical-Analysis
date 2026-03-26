clear;
A= [ 3 1 -1; 1 -4 2; -2 -1 5];
b=[3; -1; 2];
x = [0; 0; 0];
r=b-A*x;
w=1.2;

for i=1:(length(A))
    D(i,i) = A(i,i);
end

for i=1:length(A) 
    for j=1:length(A)
        if i >= j
            E(i,j) = A(i,j);
        elseif i < j
            E(i,j) = 0;
        end
    end
end

for k = 1:4
    x = x + (w*((1-w)*D+w*E)')*r;
end
