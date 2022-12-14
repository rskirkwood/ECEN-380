%%% CLOCKS Opening %%%
%%%Testing github as a contributer
Ts = 1/16000;
beatps = 2; % 120 bpm

E_flat5 = 622.254;
E_flat4 = 311.127;
B_flat4 = 466.16;
B_flat3 = 233.08;
B_flat2 = 116.54;
G5 = 783.991;
G4 = 391.995;
G_flat4 = 369.994;
G_flat5 = G_flat4*2;
G3 = 196.00;
E_flat3 = 155.56;
E_flat2 = 77.78;
D_flat5 = 554.365;
D_flat4 = 277.18;
D_flat3 = 138.59;
F4 = 349.23;
F3 = 174.614;
F2 = 87.307;
F5 = F4*2;
C5 = 523.251;
A_flat5 = 830.609;
A_flat4 = 415.305;

% whole note = 4 beats
T1 = 4/beatps;
% half note = 2 beats
T2 = 2/beatps;
% quarter note = 1 beat
T4 = 1/beatps;
% eighth note = 1/2 beat
T8 = 0.5/beatps;

Tspace = 1/32/beatps;
% Measure 1: E_flat5, B_flat4, G4, E_flat5, B_flat4, G4, E_flat5, B_flat4
% Measure 2&3: (D_flat5, B_flat4, F4) x2, D_flat5, B_flat4
% Measure 4: (C5, A_flat4, F4) x2, C5, A_flat4
s1 = [cos(2*pi*E_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*B_flat4*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*G4*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*E_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*B_flat4*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*G4*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*E_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*B_flat4*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*D_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*B_flat4*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*F4*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*D_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*B_flat4*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*F4*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*D_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*B_flat4*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*C5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*A_flat4*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*F4*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*C5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*A_flat4*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*F4*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*C5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
   cos(2*pi*A_flat4*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
];

s1 = [s1 s1];

s3 = [cos(2*pi*E_flat5*(0:Ts:T4-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*E_flat5*(0:Ts:T4-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*E_flat5*(0:Ts:T4-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*E_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*C5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*D_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*C5*(0:Ts:T4-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*B_flat4*(0:Ts:T2-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    zeros(size(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*D_flat5*(0:Ts:T4-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*D_flat5*(0:Ts:T4-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*D_flat5*(0:Ts:T4-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*D_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*B_flat4*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*C5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*B_flat4*(0:Ts:T4-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*A_flat4*(0:Ts:T2-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    zeros(size(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
];

s3 = [s3 s3];

s4 = [zeros(size(0:Ts:T2-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    zeros(size(0:Ts:T4-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*D_flat5*(0:Ts:T4-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*D_flat5*(0:Ts:T4-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*A_flat5*(0:Ts:T2-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*G_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*F5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*E_flat5*(0:Ts:T4-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*D_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*E_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*F5*(0:Ts:T2-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...

    ];

s4 = [s4 s4];

s5 = [cos(2*pi*A_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*G5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*E_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*A_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*G5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*E_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*A_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*G5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*A_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*G5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*D_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*A_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*G5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*D_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*A_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*G5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*A_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*G5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*D_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*A_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*G5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*D_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*A_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*G5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
];

s5a = [cos(2*pi*A_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*G5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*C5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*A_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*G5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*C5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*A_flat5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*G5*(0:Ts:T8-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...    
];

s5b = [
    
];

s5 = [s5 s5 s5a s5a];

s1 = [s1 s3 s4 s1 s5];

% Base Clef:
% First four measures: E_flat3, B_flat3, B_flat3, F2
s2  = [cos(2*pi*E_flat4*(0:Ts:T1-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*B_flat3*(0:Ts:T1-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*B_flat3*(0:Ts:T1-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts)) ...
    cos(2*pi*F3*(0:Ts:T1-Tspace-Ts)) zeros(size(0:Ts:Tspace-Ts))
];

s2 = [s2 s2];

s1_size = size(s1);
s2_size = size(s2);
cols_to_pad = s1_size(2) - s2_size(2);

padding = NaN*ones(s2_size(1), cols_to_pad);
s2_padded = [s2 padding];

s = cat(1, s1, s2_padded);

soundsc(s1, 1/Ts);