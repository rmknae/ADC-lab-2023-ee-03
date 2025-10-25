
u_n = [1, 1, 1, 1, 1];
n = -2:1:2;

w = linspace(-2*pi, 2*pi, 1000);

U_ejw = zeros(size(w));

for w_i = 1:length(w)
    % vectorized sum over n
    U_ejw(w_i) = sum(u_n .* exp(-1j * w(w_i) * n));
end


magnitude_U_ejw = abs(U_ejw);
phase_U_ejw = angle(U_ejw) * (180/pi); 


ESD = magnitude_U_ejw .^ 2;

%  Plotting 
% Magnitude plot 
figure; 
plot(w, magnitude_U_ejw, 'r'); 
xlabel('Angular Frequency (\omega)'); 
ylabel('Magnitude'); 
title('Magnitude of DTFT'); 
grid on; 

% Phase plot 
figure; 
plot(w, phase_U_ejw); 
xlabel('Angular Frequency (\omega)'); 
ylabel('Phase (degrees)'); 
title('Phase of DTFT'); 
grid on; 

% Energy Spectral Density plot 
figure; 
plot(w, ESD); 
xlabel('Angular Frequency (\omega)'); 
ylabel('ESD'); 
title('ESD through DTFT magnitude square'); 
grid on;
