using FFTW
using Plots

x = [0:0.73:100;]   #generates Array no RangeStep object or what is that
y = x .^2

#fftMagnitude = abs(fft(y)) #!!!!THIS IS WRONG Julia doesn't apply scalar function to array automatically
fftMagnitude = broadcast(abs, fft(y))   #THIS IS RIGHT

plot(fftMagnitude)
