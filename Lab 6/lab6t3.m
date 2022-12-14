%%% MATLAB Code for Lab 6 Task 3 Code %%%

%% Task 3.1-2

f_players = [1471, 1724, 2000, 2273, 2632, 2941, 3333, 3571, 3846, 4167];
% Player center frequencies in Hz
f_s = 10000; % sampling frequency (remember we have decimated)
BW = 50; % Full bandwidth of filters in Hz
a = [];
b = [];

figure(1);
for f = f_players
    f_lower = f - BW/2; % Lower corner frequency of BPF
    f_upper = f + BW/2; % Upper corner frequency of BPF
    [b_temp, a_temp] = butter(5, [f_lower*2/f_s, f_upper*2/f_s]);

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

X = [x_easy1 x_easy2 x_easy3 x_easy4 x_easy5 x_hard1 x_hard2 x_hard3 x_hard4 x_hard5];
players = {'Player 1', 'Player 2', 'Player 3', 'Player 4', 'Player 5', ...
    'Player 6', 'Player 7', 'Player 8', 'Player 9', 'Player 10'};
X_titles = ["Easy 1", "Easy 2", "Easy 3", "Easy 4", "Easy 5", ... 
    "Hard 1",  "Hard 2", "Hard 3",  "Hard 4", "Hard 5"];


figure(2)

for j= 1:10
    e = [];
    x_curr = X(:,j);

    subplot(5, 2, j);

    for i = 1:10
        
        Y = filter(b(i,:), a(i,:), x_curr);
        e  = [e sum(abs(Y).^2)];

    end
    
    bar(f_players, e);
    title(X_titles(j));
    xlabel("Energy");
    set(gca,'XTickLabel',players);
    ylabel("Player Frequency");
end

%% single dataset

e = [];

for i = 1:10 
    Y = filter(b(i, :), a(i, :), x_easy1);

    e  = [e sum(abs(Y).^2)];
end

figure(11)
bar(f_players, e);
title('Easy 1');
xlabel('Player Frequency');
set(gca,'XTickLabel',players);
ylabel('Power');

e = [];

for i = 1:10 
    Y = filter(b(i, :), a(i, :), x_hard4);

    e  = [e sum(abs(Y).^2)];
end

figure(24)
bar(f_players, e);

title('Hard 4');
xlabel('Player Frequency');
set(gca,'XTickLabel',players);
ylabel('Power');







