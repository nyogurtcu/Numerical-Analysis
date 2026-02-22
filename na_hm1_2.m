clear

%Define functions

function y = der_approx(x, h)
f = @(x) sin(x);
y= (f(x+h)-f(x-h))/(2*h);
end


x0 = 1.2;
h = 0.1;

% approximate derivative at x0
approxDerivative = der_approx(x0, h);


h1 = 0.01;
% approximate derivative at x0 using a smaller step size
approxDerivative1 = der_approx(x0, h1);

h2 = 0.001;
approxDerivative2 = der_approx(x0, h2);

h3 = 1e-4;
approxDerivative3 = der_approx(x0, h3);


%exact derivative
ex_der = cos(x0);

%Absolute Errors
absoluteError0= abs(approxDerivative - ex_der);
absoluteError1 = abs(approxDerivative1 - ex_der);
absoluteError2 = abs(approxDerivative2 - ex_der);
absoluteError3 = abs(approxDerivative3 - ex_der);

h4=1e-7;
approxDerivative4 = der_approx(x0,h4);
absoluteError4 = abs(approxDerivative4 - ex_der);

h5=1e-8;
approxDerivative5 = der_approx(x0,h5);
absoluteError5 = abs(approxDerivative5 - ex_der);

h6=1e-9;
approxDerivative6 = der_approx(x0, h6);
absoluteError6 = abs(approxDerivative6 - ex_der);

h7=1e-10;
approxDerivative7 = der_approx(x0, h7);
absoluteError7 = abs(approxDerivative7 - ex_der);

h8=1e-11;
approxDerivative8 = der_approx(x0,h8);
absoluteError8 = abs(approxDerivative8 - ex_der);

h9 = 1e-13;
approxDerivative9 = der_approx(x0, h9);
absoluteError9 = abs(approxDerivative9 - ex_der);

h10 = 1e-15;
approxDerivative10 = der_approx(x0, h10);
absoluteError10 = abs(approxDerivative10 - ex_der);

h11 = 1e-16;
approxDerivative11 = der_approx(x0, h11);
absoluteError11 = abs(approxDerivative11 - ex_der);


%all absolute errors in an array for analysis
absoluteErrors = [absoluteError0, absoluteError1, absoluteError2, absoluteError3, absoluteError4, absoluteError5, absoluteError6, absoluteError7, absoluteError8, absoluteError9, absoluteError10, absoluteError11];


% absolute errors against the step sizes 
hValues = [h, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11];
loglog(hValues, absoluteErrors, '-o');
xlabel('Step Size (h)');
ylabel('Absolute Error');
title('Absolute Error vs Step Size for Derivative Approximation');
grid on;

