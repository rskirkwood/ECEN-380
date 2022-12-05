%% 5.6-1a
Omega = linspace(-pi,pi,1001);
Hb = @(z) z.^2./((z-0.825*exp(j*7*pi/8)).*(z-0.825*exp(-j*7*pi/8)));
subplot(211); plot(Omega,abs(Hb(exp(1j*Omega)))); grid on;
axis([-pi pi 0 8.5]); xlabel('\Omega'); ylabel('|H_a[e^{j\Omega}]/b_0|');
set(gca,'xtick',-pi:pi/2:pi,'ytick',0:1:8.5);
subplot(212); plot(Omega,angle(Hb(exp(1j*Omega))));
grid on; axis([-pi pi -pi pi]);
xlabel('\Omega'); ylabel('\angle H_a[e^{j\Omega}]-\angle b_0');
set(gca,'xtick',-pi:pi/2:pi,'ytick',-pi:pi/2:pi);