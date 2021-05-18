using FFTW
using Plots
using Waveforms

x = sawtoothwave(0.4)
plot([squarewave, sin], -π/2, 2π)

fftResult = fft(x)

print(fftResult)
plot(fftResult)
