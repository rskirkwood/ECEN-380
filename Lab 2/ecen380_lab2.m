%%% MATLAB SCRIPT FOR LAB 2 %%%

C = 1.08e-6;
R_s = 50;
R_l = 599;
P = 1/(C*R_s);
t_step = 1e-6;
t = -1e-3:t_step:2.5e-3;

h = (1/(C*R_s))*exp(-t*(R_s+R_l)/(C*R_s*R_l));

t_0 = 0.001;
x = rectangularPulse(0, t_0, t); 
y_c = 1e-14*conv(h,x);

t_c = -0.001:t_step:6e-3;
plot(t_c(1:3000), y_c(1:3000));
title("Square Wave Graph")
xlabel('seconds (ms)');
ylabel('volts');