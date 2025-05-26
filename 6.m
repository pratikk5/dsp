%IIR filter design
%A)BUTTERWORTH

%BUTTERWORTH LPF
clc;
close all;
clear all;
alphap=0.3;
alphas=40;
fp=400;
fs=600;
F=2000;
Fs=0.6;
omp=2*fp/F;
oms=2*fs/F;
[n,wn]=buttord(omp,oms,alphap,alphas);
disp([n,wn]);
[b,a]=butter(n,wn);
[bz,az]=impinvar(b,a,Fs);
H=tf(bz,az);
disp(H);
w=0:0.1:pi;
freqz(bz,az,w);
title('butterworth digital low pass filter');
grid;

%BUTTERWORTH HPF
clc;
close all;
clear all;
alphap=0.3;
alphas=40;
fp=400;
fs=600;
F=2000;
Fs=0.6;
omp=2*fp/F;
oms=2*fs/F;
[n,wn]=buttord(omp,oms,alphap,alphas);
disp([n,wn]);
[b,a]=butter(n,wn,'high');
[bz,az]=impinvar(b,a,Fs);
H=tf(bz,az);
disp(H);
w=0:0.1:pi;
freqz(bz,az,w);
title('butterworth digital high  pass filter');
grid;

%BUTTERWORTH BPF
clc;
close all;
clear all;
alphap=7;
alphas=30;
wp=[0.4,0.59];
ws=[0.28,0.7];
Fs=0.78;
[n,wn]=buttord(wp,ws,alphap,alphas);
disp([n,wn]);
[b,a]=butter(n,wn);
[bz,az]=impinvar(b,a,Fs);
H=tf(bz,az);
disp(H);
w=0:0.1:pi;
freqz(bz,az,w);
title('butterworth digital bandpass filter');
grid;

%BUTTERWORTH BRF
clc;
closeall;
clearall;
alphap=7;
alphas=30;
wp=[0.4,0.59];
ws=[0.28,0.7];
Fs=0.78;
[n,wn]=buttord(wp,ws,alphap,alphas);
disp([n,wn]);
[b,a]=butter(n,wn,'stop');
[bz,az]=impinvar(b,a,Fs);
H=tf(bz,az);
disp(H);
w=0:0.1:pi;
freqz(bz,az,w);
title('butterworth digital bandstop filter');
grid;

%B)CHEBYSHEV TYPE I

%CHEBYSHEV-I LPF
clc;
close all;
clear all;
alphap=3;
alphas=40;
fp=400;
fs=600;
F=2000;
omp=2*fp/F;
oms=2*fs/F;
[n,wn]=cheb1ord(omp,oms,alphap,alphas);
disp([n,wn]);
[b,a]=cheby1(n,alphas,wn);
w=0:0.099:pi;
freqz(b,a,w);
title('chebyshev type 1 lowpass digital filter');
grid;

%CHEBYSHEV-I HPF
clc;
close all;
clear all;
alphap=3;
alphas=40;
fp=400;
fs=600;
F=2000;
omp=2*fp/F;
oms=2*fs/F;
[n,wn]=cheb1ord(omp,oms,alphap,alphas);
disp([n,wn]);
[b,a]=cheby1(n,alphas,wn,'high');
w=0:0.099:pi;
freqz(b,a,w);
title('chebyshev type 1 high pass digital filter');
grid;

%CHEBYSHEV-I BPF
clc;
close all;
clear all;
alphap=6;
alphas=20;
wp=[0.31,0.54];
ws=[0.2,0.6];
F=2000;
Fs=0.7;
[n,wn]=cheb1ord(wp/pi,ws/pi,alphap,alphas);
disp([n,wn]);
[b,a]=cheby1(n,alphas,wn);
[bz,az]=bilinear(b,a,Fs);
H=tf(bz,az);
disp(H);
w=0:0.1:pi;
freqz(bz,az,w);
title('chebyshev type 1 bandpass  digital filter');
grid;

%CHEBYSHEV-I BRF
clc;
close all;
clear all;
alphap=7;
alphas=25;
wp=[0.3,0.59];
ws=[0.1,0.6];
F=2000;
Fs=0.89;
[n,wn]=cheb1ord(wp/pi,ws/pi,alphap,alphas);
disp([n,wn]);
[b,a]=cheby1(n,alphas,wn,'stop');
[bz,az]=bilinear(b,a,Fs);
H=tf(bz,az);
disp(H);
w=0:0.0993:pi;
freqz(bz,az,w);
title('chebyshev type 1 bandstop digital  filter');
grid;


%C)CHEBYSHEV TYPE II

%CHEBYSHEV-II LPF
clc;
close all;
clear all;
alphap=0.3;
alphas=40;
fp=400;
fs=600;
F=2000;
omp=2*fp/F;
oms=2*fs/F;
[n,wn]=cheb2ord(omp,oms,alphap,alphas);
disp([n,wn]);
[b,a]=cheby2(n,alphas,wn);
w=0:0.099:pi;
freqz(b,a,w);
title('chebyshev type 2 low pass filter');
grid;

%CHEBYSHEV-II HPF
clc;
close all;
clear all;
alphap=0.3;
alphas=40;
fp=400;
fs=600;
F=2000;
omp=2*fp/F;
oms=2*fs/F;
[n,wn]=cheb2ord(omp,oms,alphap,alphas);
disp([n,wn]);
[b,a]=cheby2(n,alphas,wn,'high');
w=0:0.099:pi;
freqz(b,a,w);
title('chebyshev type 2 highpass filter');
grid;

%CHEBYSHEV-II BPF
clc;
close all;
clear all;
alphap=6;
alphas=20;
wp=[0.31,0.54];
ws=[0.2,0.6];
F=2000;
Fs=0.7;
[n,wn]=cheb2ord(wp/pi,ws/pi,alphap,alphas);
disp([n,wn]);
[b,a]=cheby2(n,alphas,wn);
H=tf(b,a);
disp(H);
w=0:0.1:pi;
freqz(b,a,w);
title('chebyshev type2bandpass filter');
grid;


%CHEBYSHEV-II BRF
clc;
close all;
clear all;
alphap=6;
alphas=20;
wp=[0.31,0.54];
ws=[0.2,0.6];
F=2000;
Fs=0.7;
[n,wn]=cheb2ord(wp/pi,ws/pi,alphap,alphas);
disp([n,wn]);
[b,a]=cheby2(n,alphas,wn,'stop');
H=tf(b,a);
disp(H);
w=0:0.1:pi;
freqz(b,a,w);
title('chebyshev type2bandstop filter');
grid;

