Clc; clear all; close all; 
wc1=input('enter cutoff frequency=');
N=input('enter order(odd number)='); 
e=0.0001; M=(N-1)/2; n=0:N-1; 
b=sin(wc1*(n-M+e)); 
hd=(b)./(pi*(n-M+e)); %hd(n) 
wr1=rectwin(N); %window function 
hn1=hd.*wr1'; 
w=0:0.08:pi; 
h1=freqz(hn1,1,w);
subplot(2,2,1); 
plot(w,abs(h1),'b.-');
xlabel('----->w'); 
ylabel('magnitude(H)');
title('FIR LPF(rect) response by MJSS');
wr2=kaiser(N); %window function
hn2=hd.*wr2'; w=0:0.08:pi; 
h2=freqz(hn2,1,w); 
subplot(2,2,2); 
plot(w,abs(h2),'b.-'); 
xlabel('----->w');
ylabel('magnitude(H)');
title('FIR LPF(kaiser) response by MJSS');
wr3=hamming(N); %window function
hn3=hd.*wr3'; w=0:0.08:pi; 
h3=freqz(hn3,1,w); 
subplot(2,2,3); 
plot(w,abs(h3),'b.-');
xlabel('----->w'); 
ylabel('magnitude(H)'); 
title('FIR LPF(ham) response by MJSS ');
wr4=hann(N); %window function
hn4=hd.*wr4'; w=0:0.08:pi;
h4=freqz(hn4,1,w);
subplot(2,2,4); 
plot(w,abs(h4),'b.-');
xlabel('----->w'); 
ylabel('magnitude(H)');
title('FIR LPF(han) response by MJSS');
