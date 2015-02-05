clear all;
close all;


%detector at 93.7:transmitter at 39.5: center of gonio 64.5
%max value tuned to at 160 on gonio
%maximums should be at 22.5 and 50
%narrow : d = 7.5
%angle 0 = 180 on goniometer
angle = 0:5:85;
meterNarrowReading= [1,0,0,0,0.3,0.42,0,0,0,0,0.02,0,0,0,0,0,0,0];

figure(1);
plot(angle,meterNarrowReading);
title('Meter Reading against Goniometer Angle   ({\theta}) for Narrow Slit');
xlabel('Goniometer Angle ({\theta})');
ylabel('Meter Reading');



%wide : d = 10.5
angle2 = 0:5:85;
meterWideReading = [0.64,0,0,0.35,0,0,0,0.02,0,0,0,0,0,0,0,0,0,0];



figure(2);
plot(angle2,meterWideReading);
title('Meter Reading  against Goniometer Angle ({\theta}) for wWide Slit');
xlabel('Goniometer Angle ({\theta})');
ylabel('Meter Reading');