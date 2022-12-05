%% 6.3-1
n = -10:10;   Dn = 3./(pi^2*n.^2).*(cos(n*pi/3)-cos(2*pi*n/3)); Dn(n==0) = 0.5;
subplot(211); stem(n,abs(Dn)); xlabel('n'); ylabel('|D_n|');
axis([-10 10 0 .55]); set(gca, 'xtick', -10:5:10); grid on;
subplot(212); stem(n, angle(Dn)); xlabel('n'); ylabel('\angle D_n');
axis([-10 10 -1.1*pi 1.1*pi]); set(gca, 'xtick', -10:5:10, 'ytick', -pi:pi/2:pi);
set(gca,'yticklabel',{'-\pi','-\pi/2','0','\pi/2','\pi'}); grid on;

%% 6.3-3
