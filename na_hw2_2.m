clear

f = @(x) exp(x) - x - 2;

for a = 1:0.5:2
    for b = (a+1):0.5:2
        if f(a)*f(b) < 0
            xr=f(a)*f(b);
            fprintf('Root between %3.2f and %3.2f, result is %3.2f\n', a, b, xr);
            for i = 0:28
                x0=(a+b)/2;
                fprintf(' %3d  |  %9.6f  |  %9.6f  |  %9.6f  |  %9.6f\n', i, a, b, x0, f(x0));
                if f(a)*f(x0) < 0 
                    b=x0;
                else 
                    a=x0;
                end
            end
            
        end
    end
end

