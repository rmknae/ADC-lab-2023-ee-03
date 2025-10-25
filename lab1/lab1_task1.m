clc; clear; close all;

% Define n range
n = -10:10;

% Fourier coefficients
Dn = (1/4) * exp(-1j * n * pi / 4) .* sinc(n/4);

% Magnitude and Phase
magnitude_Dn = abs(Dn);
phase_Dn = angle(Dn) * 180/pi;

% Frequency axis
T = 4;              
w0 = 2*pi / T;      
omega = n * w0;

% Plot Magnitude Spectrum
figure;
stem(omega, magnitude_Dn, 'r', 'LineWidth', 1.5, 'Marker', 'o');
xlabel('Frequency \omega (rad/sec)');
ylabel('|Dn| (Volts)');
title('Magnitude Spectrum of Fourier Coefficients');
grid on; grid minor;

% Plot Phase Spectrum
figure;
stem(omega, phase_Dn, 'b', 'LineWidth', 1.5, 'Marker', 's');
xlabel('Frequency \omega (rad/sec)');
ylabel('Phase \angle D_n (degrees)');
title('Phase Spectrum of Fourier Coefficients');
grid on; grid minor;

% Display Time Period
fprintf('Time period of the signal D(t) = %.2f sec\n', T);
