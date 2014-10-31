clear all;
close all;

% E = I/R^2
% I = I/R^2
% Experiment 1a

% Section 4
% Table 1.1 contained within R, M,MR and MRSquared
% Intensity Dial set to , dial at 180 degrees
% M is recorded Data

R = 40:10:100;
M =[1,0.8,0.54,0.32,0.26,0.26,0.12];
MR = M.*R;
MRSquared = M.*(R.^2);
figure(1);
plot(R,M);
xlabel('Distance R');
ylabel('Induced Current');
title('Induced Current as varying Distance R');

% Section 5
% Set R to value between 70cm and 90cm (80cm)
% Gradually Trends upwards with a sinusoidal variation 
% With the value of 1.4

% Section 6
% Set R to value between 50 and 90 cm (70cm)
% Gradually Trends upwards with a sinusoidal variation
% Possible interference?

% Section 7
% R is set to 50cm
% Intensity when angle of polarisation is 0 degrees
% is 0.5 and varies downward to 0 with cos^2 as the angle
%  of polarisation approaches 90 degrees
% this then increases as the polarisation angle is
% set to 180.
% This result is replicated when the transmitter is 
% rotated instead of the receiver

% Section 8 
% R is set to ~ 45cm

degrees = 0:10:180;
inducedCurrent =[0.03,0.03,0.03,0.03,0.03,0.03,0.04,0.20,0.78,1,0.48,0.08,0.04,0.04,0.03,0.03,0.03,0.03,0.03];
figure(2);
plot(degrees,inducedCurrent);
title('Induced Current against Angle of Receiver');
xlabel('Angle of Reciever ({\theta})');
ylabel('Induced Current');




