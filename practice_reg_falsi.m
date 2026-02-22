clear; clc;

f = @(x) x.^3 - 2*x - 5;

xl = 2;
xu = 3;
tol = exp(-6);
max_i=50;

if f(xl) * f(xu) <= 0
    for i=1:max_i
        xr = xu - ((f(xu)*(xl-xu))/(f(xl)-f(xu)));
        fxr = f(xr);
        if abs(f(xr)) < tol
            break
        elseif f(xl)*fxr < 0
            xu=xr;
        else
            xl=xr;
        end
        root = xr;
    end
end

