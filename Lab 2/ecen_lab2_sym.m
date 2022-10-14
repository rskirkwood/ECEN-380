%%% Solving the Equation Symbolically %%%

C = 1.08e-6;
R_s = 50;
R_l = 599;
P = 1/(C*R_s);

syms y(t);
u = heaviside(t);
dif_eq = (diff(y,t) + (R_l+R_s)/(R_s*R_l*C)*y) == 0; 
condition = y(0) == 1;
y_n = dsolve(dif_eq, condition);
h_sym = P*y_n*heaviside(t);
figure(1);
fplot(h_sym);
xlim([-0.001 0.005]);
title("MATLAB Impulse Response");
xlabel("seconds");
ylabel("volts");

% t_0 = .001; 
% x = rectangularPulse(0, t_0, t);
% dt = 1e-6;
% tval = -0.001:dt:0.005;
% y_c = conv(x(tval), h_sym(tval))*dt;
% figure(2);
% fplot(x);
% xlim([-0.001 0.005]);