clear all;
close all;

% Equipment arranged as shown in figure 2.1
detectorMultiplier=[1,1,1,1,1,1,3,3];
angleOfIncidence = 20:10:90;
detectorReading = [0.6,0.61,0.5,0.6,0.28,0.24,0.78,0.24];
angleOfReflection =[20,30,39,50,58,67,77,87];

figure(1);
scatter(angleOfIncidence,angleOfReflection,75,'k','x');
title('Angle of Reflection against Angle of Incidence');
xlabel('Angle of Incidence ({\theta})');
ylabel('Angle of Reflection ({\theta})');

figure(2);
scatter(angleOfIncidence,detectorReading.*detectorMultiplier,75,'k','x');
title('Detector Reading against Angle Of Incidence');
xlabel('Angle of Incidence ({\theta})');
ylabel('Detector Reading');