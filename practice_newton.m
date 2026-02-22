clear; clc;

f = @(x) x.^3 - 2*x - 5;

df = @(x) 3*x.^2 - 2;

xi = 2;

tol = exp(-6);

for i=1:10
    x = xi - (f(xi)/df(xi));
    rel_error = abs((x-xi)/x);
    if rel_error < tol
        break;
        xi = x;
    end

end
fprintf('Root found: %.6f\n', x);

