//FIR filter design
A)HAMMING WINDOW
%HAMMING WINDOW
close all;clear all;clc;
wc=0.5*pi;N=25;
b=fir1(N,wc/pi,hamming(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,1);
plot(W/pi,abs(h));
xlabel('normalised frequency in hz');
ylabel('Gain in db');
title('HAMMING WINDOW:Low pass filter');grid on;
 
clear all;
wc=0.5*pi;N=34;
b=fir1(N,wc/pi,'HIGH',hamming(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,2);
plot(W/pi,abs(h));
xlabel('normalised frequency in hz');
ylabel('Gain in db');
title('HAMMING WINDOW:High pass filter');grid on;
 
clear all;
wc1=0.25*pi;
wc2=0.75*pi;
wc=[wc1 wc2];N=40;
b=fir1(N,wc/pi,'BANDPASS',hamming(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,3);
plot(W/pi,abs(h));
xlabel('normalised frequency in hz');
ylabel('Gain in db');
title('HAMMING WINDOW:Band pass filter');grid on;
 
clear all;
wc1=0.25*pi;
wc2=0.75*pi;
wc=[wc1 wc2];N=40;
b=fir1(N,wc/pi,'STOP',hamming(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,4);
plot(W/pi,abs(h));
xlabel('normalised frequency in hz');
ylabel('Gain in db');
title('HAMMING WINDOW:Band stop filter');grid on;

B)HANNING WINDOW

%HANNING WINDOW
close all;clear all;clc;
wc=.5*pi;N=25;
b=fir1(N,wc/pi,hann(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,1);
plot(W/pi,abs(h));
xlabel('normalized frequency in hz');
ylabel('Gain in db');
title('HANNING WINDOW:Low pass filter');grid on;
 
clear all;
wc=0.5*pi;N=34;
b=fir1(N,wc/pi,'HIGH',hann(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,2);
plot(W/pi,abs(h));
xlabel('normalized frequency in hz');
ylabel('Gain in db');
title('HANNING WINDOW:HIGH pass filter');grid on;
 
clear all;
wc1=0.25*pi;
wc2=0.75*pi;
wc=[wc1 wc2];N=40;
b=fir1(N,wc/pi,'BANDPASS',hann(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,3);
plot(W/pi,abs(h));
xlabel('normalized frequency in hz');
ylabel('Gain in db');
title('HANNING WINDOW:BAND pass filter');grid on;
 
clear all;
wc1=0.25*pi;
wc2=0.75*pi;
wc=[wc1 wc2];N=40;
b=fir1(N,wc/pi,'STOP',hann(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,4);
plot(W/pi,abs(h));
xlabel('normalized frequency in hz');
ylabel('Gain in db');
title('HANNING WINDOW:BAND STOP filter');grid on;



C)BOXCAR WINDOW
close all;clear all;clc;
wc=0.5*pi;N=25;
b=fir1(N,wc/pi,boxcar(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,1);
plot(W/pi,abs(h));
xlabel('normalized frequency in hz');
ylabel('Gain in db');
title('BOXCAR:Low pass filter');grid on;
 
clear all;
wc=0.5*pi;N=34;
b=fir1(N,wc/pi,'HIGH',boxcar(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,2);plot(W/pi,abs(h));
xlabel('normalized frequency in hz');
ylabel('Gain in db');
title('BOXCAR:HIGH pass filter');grid on;
 
clear all;
wc1=0.25*pi;
wc2=0.75*pi;
wc=[wc1 wc2];N=40;
b=fir1(N,wc/pi,'BANDPASS',boxcar(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,3);plot(W/pi,abs(h));
xlabel('normalized frequency in hz');
ylabel('Gain in db');
title('BOXCAR:BAND pass filter');grid on;
 
clear all;
wc1=0.25*pi;
wc2=0.75*pi;
wc=[wc1 wc2];N=40;
b=fir1(N,wc/pi,'STOP',boxcar(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,4);plot(W/pi,abs(h));
xlabel('normalized frequency in hz');
ylabel('Gain in db');
title('BOXCAR:BAND STOP filter');grid on;

D)BARTLETT WINDOW
%BARTLETT WINDOW
close all;clear all;clc;
wc=0.5*pi;N=25;
b=fir1(N,wc/pi,bartlett(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,1);
plot(W/pi,abs(h));
xlabel('normalized frequency in hz');
ylabel('Gain in db');
title('bartlett:Low pass filter');grid on;
 
clear all;
wc=0.5*pi;N=34;
b=fir1(N,wc/pi,'HIGH',bartlett(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,2);plot(W/pi,abs(h));
xlabel('normalized frequency in hz');
ylabel('Gain in db');
title('bartlett:HIGH pass filter');grid on;
 
clear all;
wc1=0.25*pi;
wc2=0.75*pi;
wc=[wc1 wc2];N=40;
b=fir1(N,wc/pi,'BANDPASS',bartlett(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,3);plot(W/pi,abs(h));
xlabel('normalized frequency in hz');
ylabel('Gain in db');
title('bartlett:BAND pass filter');grid on;
 
clear all;
wc1=0.25*pi;
wc2=0.75*pi;
wc=[wc1 wc2];N=40;
b=fir1(N,wc/pi,'STOP',bartlett(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,4);plot(W/pi,abs(h));
xlabel('normalized frequency in hz');
ylabel('Gain in db');
title('bartlett:BAND STOP filter');grid on;

E)TRIANGULAR WINDOW
%TRIANGULAR WINDOW
close all;clear all;clc;
wc=0.5*pi;N=25;
b=fir1(N,wc/pi,'low',triang(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,1);
plot(W/pi,abs(h));
xlabel('normalized frequency in hz');
ylabel('Gain in db');
title('triangular:Low pass filter');grid on;
 
clear all;
wc=0.5*pi;N=34;
b=fir1(N,wc/pi,'HIGH',triang(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,2);
plot(W/pi,abs(h));
xlabel('normalized frequency in hz');
ylabel('Gain in db');
title('triangular:HIGH pass filter');grid on;
 
clear all;
wc1=0.25*pi;
wc2=0.75*pi;
wc=[wc1 wc2];N=40;
b=fir1(N,wc/pi,'BANDPASS',triang(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,3);
plot(W/pi,abs(h));
xlabel('normalized frequency in hz');
ylabel('Gain in db');
title('triangular:BAND pass filter');grid on;
 
clear all;
wc1=0.25*pi;
wc2=0.75*pi;
wc=[wc1 wc2];N=40;
b=fir1(N,wc/pi,'STOP',triang(N+1));
W=0:0.01:pi;
h=freqz(b,1,W);
subplot(2,2,4);
plot(W/pi,abs(h));
xlabel('normalized frequency in hz');
ylabel('Gain in db');
title('triangular:BAND STOP filter');grid on;

