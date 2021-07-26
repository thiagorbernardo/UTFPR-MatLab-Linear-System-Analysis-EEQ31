% 2 - b - 5 bits

s10amostrado=senoide(128,-127,10,100);
indice=10:10:1000;
s10original=senoide(128,-127,10,1000); %consideramos como sinal original contínuo

figure(3);
plot(s10original)
hold on
plot(indice,s10amostrado,'r');
s10quantizado=quantiza_floor(s10amostrado,5); %2 bits
stairs(indice,s10quantizado,'g');
hold off