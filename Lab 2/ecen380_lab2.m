%%% MATLAB SCRIPT FOR LAB 2 %%%

C = 1.08e-6;
R_s = 50;
R_l = 599;
t_step = 1/100;
P = 1/(C*R_s);
t = -1e-3:1e-6:5e-3;

h = (1/(C*R_s))*exp(-t*(R_s+R_l)/(C*R_s*R_l));
plot(h);
xlabel('seconds(ms)');
ylabel('Volts');





%%% Solving the Equation Symbolically %%%

% syms y_n(t);
% y_n(t) = dsolve('Dy+(1/R_l+1/R_s)/C*y=0', 'y(0)=1','t');
% y_n = dsolve('Dy+((1/599+1/50)/(1.08e-6)*y)=0', 'y(0)=1','t');

dif_eq = diff(y,t) + ((1/R_l+1/R_s)/C)*y == 0; 
con = y(0) == 1;
y_n = dsolve();
h_sym = P*y_n*u;

