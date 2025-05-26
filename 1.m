//Basic signal representation
clear all;
clc;
close all;
%UNIT IMPULSE WAVE
t=-3:1:2;
x1=[zeros(1,2),ones(1,2),zeros(1,2)];
subplot(3,3,1);
stem(t,x1);
xlabel('TIME');
ylabel('AMPLITUDE');
title('UNIT IMPULSE WAVE');
grid;

%UNIT STEP WAVE
N=5
t=0:1:4;
x2=ones(1,5);
subplot(3,3,2);
plot(t,x2);
xlabel('TIME');
ylabel('AMPLITUDE');
title('UNIT STEP WAVE');
grid;

%SINE WAVE
f=1000;
t=0:.01:2;
x3=2*sin(2*180*f*t);
subplot(3,3,3);
plot(t,x3);
xlabel('TIME');
ylabel('AMPLITUDE');
title('SINE WAVE');
grid;

%COSINE WAVE
f=1000;
t=0:0.01:2;
x4=2*cos(2*180*f*t);
subplot(3,3,4);
plot(t,x4);
xlabel('TIME');
ylabel('AMPLITUDE');
title('COSINE WAVE');
grid;

%RAMP WAVE
n=8;
t=0:1:n;
subplot(3,3,5);
plot(t,t);
xlabel('TIME');
ylabel('AMPLITUDE');
title('RAMP WAVE');
grid;

%SAWTOOTH WAVE
f=100;
t=0:1/f:.25;
x6=sawtooth(2*180*f*t);
subplot(3,3,6);
plot(t,x6);
xlabel('TIME');
ylabel('AMPLITUDE');
title('SAWTOOTH WAVE');
grid;

%TRINGULAR WAVE
n=6;
t=0:n;
x7=(-1).^t;
subplot(3,3,7);
plot(t,x7);
xlabel('TIME');
ylabel('AMPLITUDE');
title('TRIANGULAR WAVE');
grid;

%EXPONENTIAL WAVE
t=0:10;
x8=exp((-1)*t);
subplot(3,3,8);
plot(t,x8);
xlabel('TIME');
ylabel('AMPLITUDE');
title('EXPONENTIAL WAVE');
grid;
