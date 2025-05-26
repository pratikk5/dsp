%fft
clc;
clear all;
close all;

%FFT of given sample
x=input('enter the sequence');
y=fft(x,8);
freqz(y);
disp(y);
z=ifft(y);
disp(z);
title('8 point fft');

 
%Sample input: [2 2 2 2 1 1 1 1]
%Output of FFT : [12.0000 + 0.0000i   1.0000 - 2.4142i   0.0000 + 0.0000i   1.0000 - 0.4142i  0.0000 + 0.0000i   1.0000 + 0.4142i   0.0000 + 0.0000i   1.0000 + 2.4142i]


%ifft
clc;
close all;
clear all;
t=0:0.001:6;
x=5*cos(2*pi*120*t)+5*sin(2*pi*50*t);
y=x+5*randn(size(t));
subplot(2,1,1);
plot(1000*t(1:50),y(1:50));
title('signal corrupted with zero mean randm noise');
xlabel('time(ms)');
f=1000*(0:256)/512;
z=fft(y,512);
pyy=z.*conj(z)/512;
subplot(2,1,2);
plot(f,pyy(1:257));
title('frequency content of y');
xlabel('frequency(Hz)');


