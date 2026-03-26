function y = f(x)
y=x*sin(x);
end

xl=2;
xu=4;

fprintf(' Iter |     xl     |     xu     |     xr     |    f(xr)\n');
fprintf('-----------------------------------------------------------\n')


for i=0:8
    xr=(xl+xu)/2;
    if f(xl) * f(xr) < 0
        xu = xr;
    elseif f(xl) * f(xr) > 0
        xl=xr;
    elseif f(xl) * f(xr) == 0
        y = xr;
    end

    fprintf(' %3d  | %9.6f | %9.6f | %9.6f | %9.6f\n', i, xl, xu, xr, f(xr));
end


% 9.6f means 9 spaces on the result's left side, and 6 sig figures.