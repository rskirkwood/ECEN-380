%%% CLOCKS Opening %%%

Ts = 1/16000;
beatps = 2; % 120 bpm

E_flat4 = 311.127;
B_flat4 = 466.16;
B_flat3 = 233.08;
B_flat2 = 116.54;
G3 = 196.00;
E_flat3 = 155.56;
E_flat2 = 77.78;
D_flat4 = 277.18;
F4 = 349.23;
F3 = 174.614;
F2 = 87.307;

% whole note = 4 beats
T1 = 4/beatps;
% half note = 2 beats
T2 = 2/beatps;
% quarter note = 1 beat
T4 = 1/beatps;
% eighth note = 1/2 beat
T8 = 0.5/beatps;

Tspace = 1/32/beatps;
s1 = [

    ];

s2  = [cos(2*pi*E_flat3*(0:Ts:T1-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*B_flat3*(0:Ts:T1-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*B_flat3*(0:Ts:T1-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*F2*(0:Ts:T1-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts))];


s = [s1 ; s2];