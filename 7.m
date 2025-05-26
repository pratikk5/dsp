//decimation and interpolation
clc;
clear all;
close all;
t=0:0.001:5;
f=50;
x=5*sin(2*pi*f*t);
subplot(3,1,1);
stem(t(1:100),x(1:100));
title('input signal');
xlabel('time->');
ylabel('amplitude->');
xe=x(1:100);
y=decimate(xe,2);
tp=2*t(1:50);
subplot(3,1,2);
stem(tp,y);
title('decimation output');
xlabel('time->');
ylabel('amplitude->');
xp=x(1:100);
z=interp(xp,2);
subplot(3,1,3);
stem(t(1:200),z);
title('interpolation output');
xlabel('time->');
ylabel('amplitude->');

