clear; clc;

fx = @(x) x.^3 - 2*x - 5;

xl =2;
xu =3;
tol = exp(-5);
i = 1;

if fx(xl)*fx(xu) < 0
    while true
        i = i +1;
        xr = (xl + xu) / 2;
        fxr=fx(xr);
        if abs(fxr) < tol
            break
   
        elseif fx(xl)*fx(xr) < 0
            xu = xr;
        elseif fx(xl) * fx(xr) > 0
            xl = xr;
        else
            fxr = fx(xr);
        end
    end
    
end




