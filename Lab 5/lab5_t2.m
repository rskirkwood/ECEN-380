%%% Lab 5 Task 2 MATLAB Code %%%

%% Record Audio

recObj = audiorecorder(48000, 24, 1); % (sampling rate, bits/sample, channels)
% disp('Start Speaking');
recordblocking(recObj, 5);
% disp('End of Recording');

%% Play Original audio

disp('Playback original audio')
myRec = getaudiodata(recObj);
player = audioplayer(myRec, 48000);
playblocking(player);

fs = 48e3;
ww = -pi:1e-4:pi;
XX = freqz(myRec, 1, ww);
ff = ww*fs/(2*pi);
figure(1);
plot(ff, (20*log10(abs(XX))));
title('Task 2.6 sweep (fs = 48kHz)');
xlabel('Hz');
ylabel('dB');

%% Play and Plot 8kHz sampled audio

my8kHzrec = myRec(1:6:length(myRec));

disp('Playback 8kHz sweep sampled version');
player = audioplayer(my8kHzrec, 8000);
playblocking(player);

fs = 8e3;
ww = -pi:1e-4:pi;
XX = freqz(my8kHzrec, 1, ww);
ff = ww*fs/(2*pi);
figure(2);
plot(ff, (20*log10(abs(XX))));
title('Task 2.6 (fs = 8kHz)');
xlabel('Hz');
ylabel('dB');