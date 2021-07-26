% 1 - a

n = 1000;

for i=1:n
    x(i) = 128* cos((2*pi*i)/1000) + 128* cos((2*pi*i)/50) + 128* cos((2*pi*i)/10);
end

figure(1);plot(x);

% 1 - b

% 1 - c

figure(2);plot(abs(fft(x))); % 1 20 100
