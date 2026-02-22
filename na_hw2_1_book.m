clear

f = @(x) sqrt(x) - 1.1;

a=0;
b=2;
atol=1e-8;
i=1;

while (b-a)/2 > atol %while error is larger than tol
    x0 = (a+b)/2;
    if f(a)*f(x0) < 0 
        b=x0;
    else
        a=x0;
    end
    i=i+1; %to count how many iterations it took
end


abs_error = (b-a)/2;
