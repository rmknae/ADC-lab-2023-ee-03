u = [1,1,1,1,1];       % input rectangular pulse
N = 5;                 % DFT length
n = 0:1:4;             % time index

% ---- DFT ---- 
k = -floor(N/2) :1: floor(N/2);   % frequency index for symmetric view
w_dft = (2*pi*k)/N;               % angular frequencies of DFT   

Un_dft = zeros(size(k));          % accumulator initialized

for n = 0:4                      % compute DFT using definition
    Un_dft = Un_dft + (u(n+1) * exp(-1j * 2 * pi * k * n / N));
end

phase_dft = angle(Un_dft) * (180/pi);   % convert rad to deg
magnitude_dft = abs(Un_dft);            % magnitude of DFT

% ---- Plot DFT Magnitude ----
figure;
stem(k, magnitude_dft, 'r', LineWidth=1.5);
title('DFT Magnitude by: 2023-ee-3');
xlabel('Frequency index k');
ylabel('Magnitude');
grid on;

% ---- Plot DFT Phase ----
figure;
stem(k, phase_dft, 'b', LineWidth=1.5);
title('DFT Phase by: 2023-ee-3');
xlabel('Frequency index k');
ylabel('Phase (deg)');
grid on;
