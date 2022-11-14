%%% Lab 4 MATLAB Code %%%

task = 1.6;



if task == 1.3
    p = [2 4 6];
    wc = 2*pi*3e3;

    poles = [];
    
    for i = p
        [B, A] =  butter(i, wc, 's');
        poles = [poles; roots(A); 0]; % the 0 in the vector separates each set of poles
    
    end
elseif task >= 1.5 && task < 2
    p = 4;
    wc = 2*pi*3e3;

    [B,A] = butter(p,wc,'s');

    figure(1);
    zplane(B,A);

    B1 = [0,0,0,wc^2];
    A1 = [0,1,0.7654*wc,wc^2];
    B2 = B1;
    A2 = [0,1,1.8478*wc,wc^2];
    A_conv = conv(A1,A2);
    B_conv = conv(B1,B2);
    figure(2);
    zplane(B_conv(3:7),A_conv(3:7));

    if task == 1.6
        figure(3);

        % this creates a row vector of equally spaced points from 10^param1
        % to 10^param2 with param3 number of points
        f = logspace(0, 5, 500);

        % this returns the frequency response vector H and w is the points
        % H is evaluated at on the graph in rad/s
        [H,w] = freqs(B,A,2*pi*f);

        % this is the function used to plot on a logarithmic scale
        semilogx(f, 20*log10(abs(H)));

        % label the plot axes
        title('Bode Frequency Plot (T1.6)');
        xlabel('Frequency in Hz');
        ylabel('Magnitude response in dB');
    end
elseif task > 2
    
end
