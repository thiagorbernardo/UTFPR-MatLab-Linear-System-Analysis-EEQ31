% 2 - c

s10amostrado=senoide(128,-127,10,100);
indice=10:10:1000;
s10original=senoide(128,-127,10,1000); %consideramos como sinal original contínuo

figure(4);
plot(s10original)
hold on
plot(indice,s10amostrado,'r');
s10quantizado=quantiza_round(s10amostrado,2); %2 bits
stairs(indice,s10quantizado,'g');
hold off