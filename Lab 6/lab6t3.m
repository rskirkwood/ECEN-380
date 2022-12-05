%%% MATLAB Code for Lab 6 Task 3 Code %%%

%% Task 3.1-2

f_players = [1471, 1724, 2000, 2273, 2632, 2941, 3333, 3571, 3846, 4167];
% Player center frequencies in Hz
f_s = 10000; % sampling frequency (remember we have decimated)
BW = 50; % Full bandwidth of filters in Hz
a = [];
b = [];

for f = f_players
    f_lower = f - BW/2; % Lower corner frequency of BPF
    f_upper = f + BW/2; % Upper corner frequency of BPF
    [b_temp, a_temp] = butter(5, [f_lower*2/f_s, f_upper*2/f_s]);
    % IMPORTANT: ‘butter’ takes frequency specifications in half cycles/sample,
    % not Hz, hence the division by f s and multiplication by 2
    f_axis = linspace(1000, 4500, 2000); % create a freq axis from 1 to 4.5 kHz
    a = [a ; a_temp];
    b = [b ; b_temp];
    H = freqz(b_temp, a_temp, f_axis, f_s); % calculates the freq response H
    % at the frequencies in f axis
    plot(f_axis, abs(H)); % magnitude of the frequency response
    title('Frequency Response');
    ylabel('Amplitude');
    xlabel('Hz');
    hold on;
end
hold off;

%% Task 3.4

load lab6_data_sets.mat;