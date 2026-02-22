clear

fprintf('   n   |        a       |        x       |    f(x)\n');
fprintf('-----------------------------------------------------------\n')

a=0;
x=0.5;

for n = 0:20
    f = @(x) x.^3 - a;
    f_der = @(x) 3*(x.^2);
    x = x - (f(x)/f_der(x));
    fprintf(' %3d   |    %9.6f   |   %9.6f    | %9.6f\n', n, a, x, f(x));
    if f(x) < 1e-18
        break
    end

    
end



