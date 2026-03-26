clear
% Initial Matrix A
A = [4, 8; 0, 2; 3, 6];
[m, n] = size(A);

% 1. Compute the Householder vector v for the first column
x = A(:, 1);
e1 = zeros(m, 1); e1(1) = 1;
rho = norm(x);

% v = x + sign(x1)*||x||*e1
v = x + sign(x(1)) * rho * e1;

% 2. Construct the Householder Matrix P
% P is orthogonal and symmetric (P = P' = P^-1)
P = eye(m) - 2 * (v * v') / (v' * v);

% 3. Calculate R (PA = R)
R = P * A;

% 4. Get Q (The inverse of P)
% Since P is orthogonal, Q = P'
Q = P';

% --- Display Results ---
fprintf('Matrix P (Transform):\n'); disp(P);
fprintf('Matrix R (Upper Triangular result PA=R):\n'); disp(R);
fprintf('Matrix Q (Inverse of P):\n'); disp(Q);

% Verification: Q * R should equal A
fprintf('Verification (Q * R):\n'); disp(Q * R);