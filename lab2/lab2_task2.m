N = 5;                                % length reference for normalization
u = [1,1,1,1,1];                      % input rectangular pulse
w = -pi:0.001:pi;                     % continuous frequency vector for DTFT
w_k = (2*pi*w)/N;                     % normalized angular frequency axis
Un = 0;                               % initialize DTFT accumulator

for n = 0:4                           % DTFT definition
    Un = Un + u(n+1) * exp(-1j * w * n);
end

% ---- DTFT Magnitude ----
figure;
plot(w_k, abs(Un), 'r', LineWidth=1.5);
title('DTFT Magnitude when N = 5 by 2023-ee-3');
xlabel('Angular frequency (rad/sec)');
ylabel('Magnitude');
grid on;

% ---- DTFT Phase ----
figure;
plot(w_k, angle(Un) * (180/pi), 'b', LineWidth=1.5);
title('DTFT Phase when N = 5 by 2023-ee-3');
xlabel('Angular Frequency (w_k) (rad/sec)');
ylabel('Phase angle (deg)');
grid on;
