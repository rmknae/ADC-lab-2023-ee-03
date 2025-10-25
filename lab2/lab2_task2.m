N = 5; 
u = [1,1,1,1,1]; 
w = -pi:0.001:pi; 
w_k = (2*pi*w)/N; 
Un = 0; 

for n = 0:4  
    Un = Un + u(n+1) * exp(-1j * w * n); 
end 

% First window - Magnitude
figure; 
plot(w_k, abs(Un), 'r', LineWidth=1.5);            
title('DTFT Magnitude when N = 5 by 2023-ee-3'); 
xlabel('Angular frequency (rad/sec)'); 
ylabel('Magnitude'); 
grid on; 

% Second window - Phase
figure; 
plot(w_k, angle(Un) * (180/pi), 'b', LineWidth=1.5);  
title('DTFT Phase when N = 5 by 2023-ee-3'); 
xlabel('Angular Frequency (w_k) (rad/sec)'); 
ylabel('Phase angle (deg)'); 
grid on;  
