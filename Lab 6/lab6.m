%%% MATLAB Code for Lab 6 %%%

%% FIR filters (Task 2.1)

N = 81; % total number of samples in the filter
L = (N-1)/2; % the filter will go from -L to L
f_corner = 4600; % corner frequency of our low-pass filter in Hz
f_s = 100000; % our sampling frequency in Hz
n = (-L:L); % this is our sample index
h_rect_FIR = 2*f_corner/f_s*sinc(n*2*f_corner/f_s); % truncated sinc
% IMPORTANT: in the code above we convert f_corner from
% Hz to cycles/sample by dividing by f_s
figure(1);
stem(n, h_rect_FIR);
title('Transfer Function');
xlabel('time');
ylabel('transfer function of rect');

ff = 0:100:10000;
XX = freqz(h_rect_FIR, 1, ff, f_s);
figure(2);
plot(ff, (20*log10(abs(XX))));
title('Frequency Response');
xlabel('Hz');
ylabel('dB');


%% Task 2.1c

%%
Nfft = 2048;
fbins = -Nfft/2:Nfft/2-1;
df = f_s/Nfft;
faxis = df*fbins;

H = fft(h_rect_FIR, Nfft);
figure(3)
plot(faxis, fftshift(20*log10(abs(H))));
xlim([0 10e3]);
title('Frequency Response');
xlabel('Hz');
ylabel('dB');

%%
bt = bartlett(N) .* h_rect_FIR';
flat = flattopwin(N) .* h_rect_FIR';
nut = nuttallwin(N) .* h_rect_FIR';
ham = hamming(N) .* h_rect_FIR';

H_bt = fft(bt, Nfft);
bt_db = fftshift(20*log10(abs(H_bt)));
H_flat = fft(flat, Nfft);
flat_db = fftshift(20*log10(abs(H_flat)));
H_nut = fft(nut, Nfft);
nut_db = fftshift(20*log10(abs(H_nut)));
H_ham = fft(ham, Nfft);
ham_db = fftshift(20*log10(abs(H_ham)));

figure(4);
subplot(411)
plot(faxis, bt_db);
title('Bartlett')
xlim([0 10e3]);
xlabel('Hz');
ylabel('dB');

subplot(412)
plot(faxis, flat_db);
title('Flattopin');
xlim([0 10e3]);
xlabel('Hz');
ylabel('dB');

subplot(413)
plot(faxis, nut_db);
title('Nuttallwin');
xlim([0 10e3]);
xlabel('Hz');
ylabel('dB');

subplot(414)
plot(faxis, ham_db);
title('Hamming');
xlim([0 10e3]);
xlabel('Hz');
ylabel('dB');

%%
figure(5);
plot(faxis, bt_db, faxis, flat_db, faxis, nut_db, faxis, ham_db);
legend('Bartlett', 'Flattopwin', 'Nuttallwin', 'Hamming');
xlim([0 10e3]);
xlabel('Hz');
ylabel('dB');
