%%% Lab 3 Task 2 Matlab Code %%%

clc, clear, close all;

load("ecen380_lab3_capacitors.mat","C");
load("ecen380_lab3_resistors.mat", "R");

C_mean = mean(C);
R_mean = mean(R);

C_dif = var(C);
R_dif = var(R);

figure(1);
histogram(R);
title("Resistor Histogram");
xlabel("Resistance");
ylabel("Quantity of Resistors")

figure(2);
histogram(C);
title("Capacitor Histogram");
xlabel("Capacitance");
ylabel("Quantity of Capacitors");

w = [];
f = [];
for i = 1:numel(R)
    for j = 1:numel(C)
        w_temp = 1/(R(i)*C(j));
        w = [w w_temp];
        f = [f w_temp/(2*pi)];
    end
end

figure(3)
histogram(w);
title("Radiance Histogram");
xlabel("Rad/sec");
ylabel("Number or Appearances");


figure(4)
histogram(f);
title("Frequency Histogram");
xlabel("Frequency");
ylabel("Number or Appearances");

function ans = binomialpdf (n, p, k)
% n is number of trials
% p is probability 
% k is number of possible successes

ans = 0;

for i = k:n
    ans = ans + nchoosek(n,i)*p^i*(1-p)^(n-i);
end

end