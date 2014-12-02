clear all;
close all;

distance = [0.0:0.1:4.3];
recordedVoltage = [64.0,10.1,10.2,10.2,10.2,10.2,10.1,10.2,10.2,10.4,11.6,12.7,13.8,14.9,16.0,17.1,18.3,19.4,20.5,21.5,23.0,24.1,25.0,26.3,27.7,28.3,29.3,30.9,31.7,32.6,34.3,35.2,36.3,37.4,38.6,40.3,41.4,42.2,43.8,64.0,64.0,64.0,64.0,64.0];
gradient = polyfit(distance(10:39),recordedVoltage(10:39),1);
theoreticalVoltage = distance.*gradient(1) + gradient(2);
difference = recordedVoltage - theoreticalVoltage;
residuals = (difference/recordedVoltage(1))*100;

figure(1);
plot(distance, recordedVoltage);              
xlabel('Range to Target (M)');
ylabel('Recorded Voltage (V)');
title('Record Voltage(V) against Range to Target (M)');


figure(2);
plot(distance(10:39),theoreticalVoltage(10:39));
xlabel('Range to Target (M)');
ylabel('Theoretical Voltage (V)');
title('Record Voltage(V) against Range to Target (M)');

figure(3);
plot(distance(10:39),residuals(10:39),'LineWidth',2);
grid
grid minor;
xlabel('Range to Target (M)');
ylabel('Residual Voltage as a Percentage of the Maximum Recorded Voltage');
title('Residual Voltage against Range to Target (M)');


