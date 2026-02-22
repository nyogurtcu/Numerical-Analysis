clear



function y = f(x)
y = x*sin(x);
end
a=2;
b=4;

fprintf('   n  |     a     |       b     |       x      |     y\n');
fprintf('----------------------------------------------------------------------\n');

for n = 0:9
    xr = (a+b)/2;
    fprintf(' %3d  |  %9.6f  |  %9.6f  |  %9.6f  |  %9.6f\n', n, a, b, xr, f(xr));
    if f(a)*f(xr)>0
        a=xr;
    elseif f(a)*f(xr) < 0
        b=xr;
    else 
        break
    end
    
end
