%%% Lab 1 %%%

path = 2;

%%% Problems From Textbook (pgs 43-53)

if path == 1 
    z = -3-4j;
    z_real = real(z); z_imag = imag(z);
    z_mag = sqrt(z_real^2 + z_imag^2);
    z_mag = sqrt(z*conj(z));
    z_mag = abs(z);
    z_rad = angle(z);
    z_deg = angle(z)*180/pi;
    z_rad = atan2(z_imag,z_real);
    cos(1j);
    log(-1);
    k = 0:2:11;
    k = 11:-10/3:0;
    k = 0:11;
    k = 0:2; w = exp(1j*(pi/3 + 2*pi*k/3));
    k = 0:99; w = exp(1j*(pi/100 + 2*pi*k/100));
    w(5)
    k(5)
    w(98:100)
    t = 0:0.2/500:0.2-0.2/500;
    f = sin(2*pi*10*t+pi/6);
    f(1)
    plot(t,f);
    xlabel('t'); ylabel('f(t)')
    plot(real(w),imag(w),'o');
    xlabel('Re(w)'); ylabel('Im(w)'); axis equal;
    g = exp(-10*t);
    h = f.*g;
    plot(t,f,'-k',t,h,':k');
    xlabel('t'); ylabel('Amplitude');
    legend('f(t)','h(t)');
    
    % matrix operations
    r = [1 0 0];
    A = [2 3;4 5;0 6];
    c = r';
    B = [c A];
end


if path == 2
    t_step = 1/16000;
    t = 0:t_step:5 + t_step;
    
    s1 = cos(2*pi*400*t);

    soundsc(s1,16000)
end

if path == 3
    t_step = 1/16000;
    t = 0:t_step:5 + t_step;
    
    mid_c = cos(2*pi*440*t);

    soundsc(s1,16000)
end