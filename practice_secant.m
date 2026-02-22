clear; clc;

f = @(x) x.^3 - 2*x - 5;

xi = 2;
xf = 3;
tol = exp(-6);

for i=1:10
    x = xf - (f(xf))*(xf-xi) / (f(xf)-f(xi));
    rel_error = abs((x-xi)/x);
    if rel_error < tol
        break;
    end
    xi = xf;
    xf = x;
end
