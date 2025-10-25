% Time vector
T = 4;
t = 0:0.01:4;
n = -10:10;
T = 4;   
w0 = 2*pi / T;  
omega = n * w0;
result = zeros(size(t));  % Preallocate
Dn = (1/4) * exp(-j * n * pi / 4) .* sinc(n/4);

% Reconstruct signal
for k = 1:length(t)
    result(k) = sum(Dn .* exp(j * n * w0 * t(k)));
end

result = real(result);

% Plot time-domain signal
figure;
plot(t, result, 'r', 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Amplitude');
title('Time-Domain Approximation of D(t)');
grid on;