close all;
clear all;
clc;
fs 1000
t=0:1/fs:1;
f1=3;
f2=9;
signal=sin(2.*pi.*f1.*t)+sin(2.*pi.*f2.*t);
subplot(3,1,1);
plot(t,signal)
xlabel("time");
ylabel("amplitude");
title("clean signal");
f_noise=50;
noise=0.3*sin(2.*pi.*f_noise.*t);
noisy_signal=signal+noise;
subplot(3,1,2);
plot(t,noisy_signal)
xlabel("time");
ylabel("amplitude");
title("noisy signal");
lower=1;
higher=15;
order=4;
[b,a]=butter(order, [lower higher]/(fs/2), 'bandpass');
filtered_signal=filtfilt(b, a, noisy_signal);
subplot(3,1,3);
plot(t,filtered_signal)
xlabel("time");
ylabel("amplitude");
title("filtered signal using butterworth filter");
n = length(t);
f = (-n/2:n/2-1)*(fs/n);
CleanFFT = fftshift(abs(fft(signal))/n);
NoisyFFT = fftshift(abs(fft(noisy_signal))/n);
FilteredFFT = fftshift(abs(fft(filtered_signal))/n);
figure;
plot(f, CleanFFT)
xlabel("frequency");
ylabel("amplitude");
title("spectrum of clean signal");
figure;
plot(f, NoisyFFT)
xlabel("frequency");
ylabel("amplitude");
title("spectrum of noisy signal");
figure;
plot(f, FilteredFFT)
xlabel("frequency");
ylabel("amplitude");
title("spectrum of filtered signal");
