u = [1,1,1,1,1];              % input rectangular sequence
N = 130;                      % DFT length (chosen = roll no.)
n = 0:1:4;                    % time index for the signal

% ---- DFT ---- 
k = -floor(N/2) : 1 : floor(N/2);   % symmetric frequency indices

w_dft = (2*pi*k)/N;                 % angular frequency points of DFT

Un_dft = zeros(size(k));            % initialize accumulator

for n = 0:4                         % compute DFT using definition
    Un_dft = Un_dft + (u(n+1) * exp(-1j * 2 * pi * k * n / N));
end

phase_dft = angle(Un_dft) * (180/pi);   % phase in degrees
magnitude_dft = abs(Un_dft);            % magnitude of DFT


% DFT Magnitude
figure;
stem(k, magnitude_dft, 'r');         
title('DFT Magnitude 2023-ee-03');  
xlabel('Frequency index k');  
ylabel('Magnitude');  
grid on;  

% DFT Phase
figure;
stem(k, phase_dft, 'b');              
title('DFT Phase by 2023-ee-3');  
xlabel('Frequency index k');  
ylabel('Phase (deg)');  
grid on;  
