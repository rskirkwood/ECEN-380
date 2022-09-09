%%% Symphony No. 5 in C Minor, First Movement, Ludwig van Beethoven

Ts = 1/16000; % sample time
beatps = 94/60; % Allegre con brio = 94 beats per minute, this is beats/s

% frequencies (cycles/s) for music tones
G = 392;
Eflat = 311.127;
F = 349.23;
D = 293.66;
% whole note = 4 beats
T1 = 4/beatps;
% half note = 2 beats
T2 = 2/beatps;
% quarter note = 1 beat
T4 = 1/beatps;
% eighth note = 1/2 beat
T8 = 0.5/beatps;

% cut short each note by 1/32 of a beat to give the illusion of
% consecutive notes
Tspace = 1/32/beatps;
s = [cos(2*pi*G*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
cos(2*pi*G*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts))...
cos(2*pi*G*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts))...
cos(2*pi*Eflat*(0:Ts:T1-Tspace-Ts)) ...
zeros(size(0:Ts:T8-Ts)) ...
cos(2*pi*F*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
cos(2*pi*F*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
cos(2*pi*F*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
cos(2*pi*D*(0:Ts:T1-Tspace-Ts))];
soundsc(s,1/Ts);