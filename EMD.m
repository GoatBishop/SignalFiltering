OPTIONS.MAXMODES = 5; %����IMF����5�㣬�õ���imf����6�У����һ��Ϊres.
[imf] = emd(x, OPTIONS); %EMD
subplot(3,2,1);plot(imf(1,:));title('IMF1');
subplot(3,2,2);plot(imf(2,:));title('IMF2');
subplot(3,2,3);plot(imf(3,:));title('IMF3');
subplot(3,2,4);plot(imf(4,:));title('IMF4');
subplot(3,2,5);plot(imf(5,:));title('IMF5');
subplot(3,2,6);plot(imf(6,:));title('res');