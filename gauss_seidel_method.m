clear;
A= [ 3 1 -1; 1 -4 2; -2 -1 5];
b=[3; -1; 2];
x = [0; 0; 0];
r=b-A*x;

for i=1:length(A) 
    for j=1:length(A)
        if i >= j
            M(i,j) = A(i,j);
        elseif i < j
            M(i,j) = 0;
        end
    end
end

for i=1:7
    x=x+inv(M)*r;
    r=b-A*x;
    disp(x);
end
