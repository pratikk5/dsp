%Block diagram reduction using matlab
clc
clear all
close all
h1=[2 3 4];
h2=[0 0 1];
l1=length(h1);
l2=length(h2);
l=l1+l2-1;
h3=[1 2 3 4 5];
x1=conv(h1,h2);
x2=x1+h3;
xn=[2 2 3 3 1 1];
l3=length(xn);
l4=length(x2);
fl=l3+l4-1;
yn=conv(xn,x2);
t1=0:1:fl-1;
t2=0:1:l3-1;
t3=0:1:l-1;
subplot(3,1,1);
stem(t2,xn);
title(‘input x(n)’);
subplot(3,1,2);
stem(t3,x2);
title(‘system weight’);
subplot(3,1,3);
stem(t1,yn);
title(‘output’);
display(x1);          
display(x2);          
display(yn);          

%Output sequence: 2     6    17    33    54    57    55    39    16     9
