%FUNCTION FOR TRUNCATION
Function beq=a2dT(d,n)
m=1;d1=abs(d);
while fix(d1)>0
d1=absd(d)/10^m;
m=m+1;
end
beq=0;
for k=1:n
beq=fix(d1*2)/(2^k)+beq;
d1=(d1*2)-fix(d1*2);
end
beq=sign(d).*beq*10^(m-1);
FUNCTION FOR ROUND OFF
Function beq=a2dR(d,n)
m=1; d1=abs(d);
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

%MAIN PROGRAM

%A.DIRECT  FORM
Clc;	
Clear all;
Close all;
[b,a]=ellip(6,0.05,60,0.4);
figure;H=tf(b’a);
Disp(‘Transfer function’);
disp(H);
zplane(b,a);
title(‘ pole-zero plot’);
figure;
freqz(b,a);
title(‘ frequency response’);
figure;
bq=a2dT(b,6);
aq=a2dT(a,6);
Hq=tf(bq,aq);
disp(‘Transfer function after truncation’);
disp(Hq);
disp(‘H’);	
disp(H);
figure;
zplane(bq,aq); 
title(‘pole-zero after truncation’); 
figure; 
freqz(bq,aq);   
title(‘Frequency response after truncation’); 
cq=a2dR(b,6); 
dq=a2dR(a,6); 
Hz=tf(cq,dq); 
disp(‘Transfer function after round-off’); 
disp(Hz); 
Zplane(cq,dq); 
title(‘pole-zero plot after round-off’); 
figure; 
freqz(cq,dq); 
title(‘Frequency response after round-off’); 
figure; 

