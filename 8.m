//Limit cycle oscillations
function beq=a2dR(d,n)
m=1;
d1=abs(d);
while fix(d1)>0
d1=absd(d)/10^m;
m=m+1;
end	
beq=0;
d1=d1+2^(-n-1);
for k=1:n
beq=fix(d1*2)/(2^k)+beq;
d1=(d1*2)-fix(d1*2);
end
beq=sign(d).*beq*10^(m-1);
%main program
clc;
clear all;
alpha=input(‘enter alpha value’); yi=0;
x=0.411;
for n=1:21
y(n)=a2dR(alpha*yi,5)+x;
yi=y(n);
x=0;
end
k=0:20
stem(k,y);
xlabel(‘time index n’);
ylabel(‘amplitude’);
