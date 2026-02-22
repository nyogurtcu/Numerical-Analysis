clear; clc;

f = @(x) x.^3 - 2*x - 5;

g = @(x) (2*x + 5)^(1/3);

xi = 2.5;

tol = exp(-8);

for i = 1:50
    x1 = g(xi);
    err = abs(x1 - xi);
    fx = f(x1);
    if err < tol
        break
    end
    xi = x1;
end

