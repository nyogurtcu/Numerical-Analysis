clear all

function[v,ea,iter]=iterMethod(x,es,maxiter)

iter=1;
sol=1;
ea=100;


while (1)
    solold=sol;
    sol=sol+(x^iter)/factorial(iter);
    iter=iter+1;
    if sol ~= 0
        ea = abs((sol-solold)/sol)*100;
    end
    if ea <=es || iter >= maxiter, break, end
end

v=1/sol;
true_value=exp(-5);
true_error=abs(true_value - v);
approx_rel_error=ea;
print(true_value, true_error, approx_rel_error)


end
