function output = notch50Hz(inputvec,Fs,centre,width)     
start=centre-width/2;
fin=centre+width/2;
Fn = Fs/2;                                                          % Nyquist Frequency
Wp = [start fin]/Fn;                                                    % Stopband Frequency (Normalised)
Ws = [0.9 1.1].*Wp;                                                 % Passband Frequency (Normalised)
Rp =  1;                                                            % Passband Ripple
Rs = 90;                                                            % Passband Ripple (Attenuation)
[n,Wp] = ellipord(Wp,Ws,Rp,Rs);                                     % Elliptic Order Calculation
[z,p,k] = ellip(n,Rp,Rs,Wp,'stop');                                 % Elliptic Filter Design: Zero-Pole-Gain 
[sos,g] = zp2sos(z,p,k);                                            % Second-Order Section For StabilityDataDatassazaaaaaa                                             % Filter Bode Plot
                           % Optiona
output = filtfilt(sos, g, inputvec);   % Filter Signal

end