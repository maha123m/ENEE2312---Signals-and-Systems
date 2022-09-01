% Maha Mali
%1200746
clear all
close all
clc
Ts=00.2;
t=0:Ts:10-Ts;
x=(10*exp(-10.*t)).*heaviside(t);
plot(x,t,'r','lineWidth',2);
xlabel('time(sec)');
ylabel('Ampltude');
y=fft(x);
fs=1/Ts;
f=(0:length(y)-1)*fs/length(y);%definr freqancy axis
ymag=abs(y);
yphase=phase(y);
figure 
plot(f,ymag,'b','lineWidth',2);
xlabel('Freqancy(Hz)');
ylabel('Magnitude');
title('Magnitude');
n=length(x);
fshift=(-n/2:n/2-1)*(fs/n);
yshift=ffshift(y);
figure
plot(fshift,abs(yshift),'y','lineWidth',2);
xlabel('Freqancy(Hz)');
ylabel('Magnitude');

