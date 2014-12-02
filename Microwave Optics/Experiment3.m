clear all;
close all;

%Frequency of Transmitter = 10.5Ghz
%Predicted wavelength:V = lamda F
velocity = 3*10^8;
idealWavelength = (velocity)/(10.5*10^9);

%Measurement 1
initialRecieverPosition1 = 0.747;
minimaTransversed1 = 12;
finalReceiverPosition1 = 0.918;
wavelength1 = (finalReceiverPosition1-initialRecieverPosition1)/(minimaTransversed1/2);

%Measurement 2
initialRecieverPosition2 =0.761;
minimaTransversed2 = 14;
finalRecieverPosition2 = 0.959;
wavelength2 = (finalRecieverPosition2-initialRecieverPosition2)/(minimaTransversed2/2);

%wavelengthArray;
wavelength = [wavelength1,wavelength2];
meanWavelength = mean(wavelength);


frequency = velocity/meanWavelength;




