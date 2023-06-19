predictor = [0 1]; % y(k)=x(k-1)
partition = [-1:.1:.9];
codebook = [-1:.1:1];
t = [0:pi/50:7];
x =sin(3*t); % Original signal
subplot 221;
plot(t,x);
subplot 222;
stem(t,x);
% Quantize x using DPCM.
encodedx = dpcmenco(x,codebook,partition,predictor);
subplot 223;
plot(t,encodedx);
% Try to recover x from the modulated signal.
decodedx = dpcmdeco(encodedx,codebook,predictor);
subplot 224;
plot(t,decodedx);