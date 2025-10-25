u = [1,1,1,1,1]; 
N = 130;  
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

% ---- DTFT ---- 
w = -pi:0.001:pi;             % Continuous frequency range (-π to π)
w_k = (N/(2*pi))*w;           % Scale to -N/2 to N/2

Un_dtft = zeros(size(w));    

for n = 0:4 
    Un_dtft = Un_dtft + u(n+1) * exp(-1j * w * n); 
end 

phase_dtft = angle(Un_dtft) * (180/pi);  
magnitude_dtft = abs(Un_dtft);  

% DTFT Magnitude
figure; 
plot(w_k, magnitude_dtft, 'r');        
title('DTFT Magnitude by 2023-ee-03'); 
xlabel('Normalized frequency index k'); 
ylabel('Magnitude'); 
grid on; 

% DTFT Phase
figure; 
plot(w_k, phase_dtft, 'b');          
title('DTFT Phase by 2023-ee-3'); 
xlabel('Normalized frequency index k'); 
ylabel('Phase (deg)'); 
grid on;  
