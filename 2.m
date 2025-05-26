%A) LINEAR CONVOLUTION
%convolution of sequences x(n) and h(n)
clc
clear all
close all

x=input('Enter the x sequence:');
a=input('Enter the index value:');
h=input('Enter the h sequence:');
b=input('Enter the index value:');
l1=length(x);
l2=length(h);
l=l1+l2-1;
y=conv(x,h);
disp('The output sequence is:');
disp(y);
t=a:1:l1-1+a;
subplot(3,1,1);
stem(t,x);
xlabel('time->');
ylabel('amplitude->');
t=b:1:l2-1+b;
subplot(3,1,2);
stem(t,h);
xlabel('time->');
ylabel('amplitude->');
c=min(a,b);
t=c:1:l-1+c;
subplot(3,1,3);
stem(t,y);
xlabel('time->');
ylabel('amplitude->');
grid;

%B)CIRCULAR CONVOLUTION

clc
clear all
close all
x=input('Enter the x sequence:');
h=input('Enter the h sequence:');
l1=length(x);
l2=length(h);
if l1>l2
   z=l1-l2; 
for i=l2+z;l1
h(i)=0;
end
else
    z=l2-l1;
for i=l1+z;l2
x(i)=0;
end
end
l=max(l1,l2);
y=cconv(x,h,l);
disp('The output sequence is:');
disp(y);
t=0:1:l-1;
subplot(3,1,1);
stem(t,x);
xlabel('time->');
ylabel('amplitude->');
title('x(n)');
subplot(3,1,2);
stem(t,h);
xlabel('time->');
ylabel('amplitude->');
title('h(n)');
subplot(3,1,3);
stem(t,y);
xlabel('time->');
ylabel('amplitude->');
title('y(n)');


%sample inputs:

%>> linear_convolution
%enter the x sequence[1 2 3 4]
%enter the index value 0
%enter the h sequence[4 5 6 10]
%enter the index value -1
%output sequence of linear convolution
%    4    13    28    53    58    54    40

%>> circular_convolution
%enter the first sequence[1 2 3 4]
%enter the second sequence[1 2]
%output sequence of circular convolution
% 9 4 7 10

