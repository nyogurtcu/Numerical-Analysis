clear

x = linspace(1.92, 2.08, 161);

y_direct = (x - 2).^9;

c = [1, -18, 144, -672, 2016, -4032, 5376, -4608, 2304, -512];

y_nested = zeros(size(x));

for j = 1:length(x)
    p = c(1);
    for i = 2:length(c)
        p = p * x(j) + c(i);
    end
    y_nested(j) = p;
end


subplot(2,1,1);
plot(x, y_direct);
grid on;
title('Direct Evaluation');
ylabel('f(x)');

subplot(2,1,2);
plot(x, y_nested, 'r');
grid on;
title('Nested Evaluation');
xlabel('x');
ylabel('f(x)');