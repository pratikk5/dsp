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

