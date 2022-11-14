%%% MATLAB CODE FOR LAB 5 TASK 1 %%%

%% task 1.2

recObj = audiorecorder(96000, 24, 1); % (sampling rate, bits/sample, channels)
disp('Start Speaking');
recordblocking(recObj, 5);
disp('End of Recording');

disp('Playback original audio')
play(recObj);
myRec = getaudiodata(recObj);
whos myRec
% explain why the array is this size
% size = 480000 because we sample 96000 times per second and sample
% for 5 seconds. So 96000 * 5 = 480000


plot(myRec);
title('My Recording - Original')
xlabel('Samples');
ylabel('Amplitude (arbitrary units)')

%% task 1.3

disp('task 1.3 audio - 960000');
player = audioplayer(myRec, 96000);
playblocking(player);

disp('task 1.3 audio - 70000');
player = audioplayer(myRec, 70000);
playblocking(player);

disp('task 1.3 audio - 120000');
player = audioplayer(myRec, 120000);
playblocking(player);

%% task 1.4

impulse_echo = zeros(192000, 1);
impulse_echo(1) = 1;
impulse_echo(48000) = 0.5;
impulse_echo(96000) = 0.25;

disp('Playing Task 1.4 echo')
player = audioplayer(impulse_echo, 96000);
playblocking(player);

%% task 1.5 

myRec_echo = conv(myRec, impulse_echo);

disp("Playing Task 1.5 echo")
player = audioplayer(myRec_echo, 96000);
playblocking(player);
% could try playing it back at diff frequencies if you want

%% task 1.6

% download different impulse responses and import them
great_hall_IR = audioread('great_hall.wav');
octagon_IR = audioread('octagon.wav');
classroom_IR = audioread("classroom.wav");

figure(2);

subplot(311);
plot(great_hall_IR);
title("Great Hall IR");
xlabel("Samples");
ylabel("Amplitude");

subplot(312);
plot(octagon_IR);
title("Octagon IR");
xlabel("Samples");
ylabel("Amplitude");

subplot(313);
plot(classroom_IR);
title("Classroom IR");
xlabel("Samples");
ylabel("Amplitude");

%% Task 1 Pass off

clear; clc; close all;

great_hall_IR = audioread('great_hall.wav');
octagon_IR = audioread('octagon.wav');
classroom_IR = audioread("classroom.wav");

recObj = audiorecorder(96000, 24, 1); % (sampling rate, bits/sample, channels)
disp('Start Speaking');
recordblocking(recObj, 5);
disp('End of Recording');
myRec = getaudiodata(recObj);

myRec_gh = conv(myRec, great_hall_IR);
myRec_oct = conv(myRec, octagon_IR);
myRec_class = conv(myRec, classroom_IR);

disp('Playback original audio')
player = audioplayer(myRec, 96000);
playblocking(player);

disp('Playback Great Hall filtered audio')
player = audioplayer(myRec_gh, 96000);
playblocking(player);

disp('Playback Octagon filtered audio')
player = audioplayer(myRec_oct, 96000);
playblocking(player);

disp('Playback Classroom filtered audio')
player = audioplayer(myRec_class, 96000);
playblocking(player);

%% Task 1.8 Create your own IR

recObj = audiorecorder(96000, 24, 1); % (sampling rate, bits/sample, channels)
pause(2); % allow time to prepare
disp('Make Impulse');
recordblocking(recObj, 2);
disp('Finished');
myImpulse = getaudiodata(recObj);

%% Task 1.8 read in generated IR

load("waterbottle_stairway_IR.mat", "myImpulse");

recObj = audiorecorder(96000, 24, 1); % (sampling rate, bits/sample, channels)
disp('Start Speaking');
recordblocking(recObj, 5);
disp('End of Recording');
myRec = getaudiodata(recObj);

myRec_IR = conv(myRec, myImpulse);

disp('Playback My Impulse filtered audio')
player = audioplayer(myRec_IR, 96000);
playblocking(player);
