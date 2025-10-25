u = [1,1,1,1,1]; 
N = 5;  
n = 0:1:4;  

% ---- DFT ---- 
k = -floor(N/2) :1: floor(N/2); 
w_dft = (2*pi*k)/N;    % Angular frequency for DFT   

Un_dft = zeros(size(k));   

for n = 0:4  
    Un_dft = Un_dft + (u(n+1) * exp(-1j * 2 * pi * k * n / N));  
end   

phase_dft = angle(Un_dft) * (180/pi);  
magnitude_dft = abs(Un_dft);  

% DFT Magnitude
figure;
stem(k, magnitude_dft, 'r', LineWidth=1.5);         
title('DFT Magnitude by: 2023-ee-3');  
xlabel('Frequency index k');  
ylabel('Magnitude');  
grid on;  

% DFT Phase
figure;
stem(k, phase_dft, 'b', LineWidth=1.5);              
title('DFT Phase by: 2023-ee-3');  
xlabel('Frequency index k');  
ylabel('Phase (deg)');  
grid on;  
