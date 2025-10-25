
u_n = [1, 1, 1, 1, 1];
M = 5;

% --- Autocorrelation ---
R_uu = xcorr(u_n, 'none');  
m = -(M-1):(M-1);


figure;
stem(m, R_uu, 'filled');
xlabel('Lag (m)');
ylabel('R_{uu}(m)');
title('Autocorrelation Function R_{uu}(m)');
grid on;

% --- DTFT of R_uu ---
w = linspace(-2*pi, 2*pi, 1000);
U_ejw = zeros(size(w));

for w_i = 1:length(w)
    U_ejw(w_i) = sum(R_uu .* exp(-1j * w(w_i) * m));
end

% --- Plot DTFT of Autocorrelation ---
figure;
plot(w, abs(U_ejw));
xlabel('Angular Frequency (\omega)');
ylabel('|DTFT\{R_{uu}\}|');
title('DTFT of Autocorrelation Function R_{uu}');
grid on;
