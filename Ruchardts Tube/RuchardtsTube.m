clear all;
close all;

%Aimee's Values :
% Air Gamma- 1.22
% Helium Gamma - 1.56
% Nitrogen Gamma - 1.50

%Our Values :
%Air Gamma - 1.42
%Helium Gamma - 1.31


%Verified Values :
%Air Gamma - 1.4
%Helium Gamma - 1.63
%Nitrogen Gamma -  1.401

V = 5.22 * 10^-5 ; %Volume of Tube - Uncert is 0.02
M = 0.6528 * 10 ^-2;%Mass of piston - Uncert is 0.0001
A = 1.54 * 10^-4;%Cross section area A - Uncert is 0.01;

%Systematic Uncert in Pressure 
%is plus or minus 2500 Pascals
%At Absolute Pressure 100,000 Pa
frequencyAir1 = [22.2,22.65,22.23]; %Hz Systematic uncert = 0.01
averageFrequencyAir1 = mean(frequencyAir1);

%At pressure 90,000Pa
frequencyAir2 = [21.65,21.36,21.40];
averageFrequencyAir2 = mean(frequencyAir2);

%At pressure 80,000Pa
frequencyAir3 = [21.16,20.90,20.15];
averageFrequencyAir3 = mean(frequencyAir3);


%At pressure 70,000Pa
frequencyAir4 = [18.74,19.82,19.48];
averageFrequencyAir4 = mean(frequencyAir4);

%At pressure 60,000Pa
frequencyAir5 = [18.73,18.74,18.03];
averageFrequencyAir5 = mean(frequencyAir5);

%At pressure 50,000Pa
frequencyAir6 = [16.19,16.90,16.03];
averageFrequencyAir6 = mean(frequencyAir6);

%At pressure 40,000Pa
frequencyAir7 = [14.15,14.70,14.70];
averageFrequencyAir7 = mean(frequencyAir7);


%At pressure 30,000Pa
frequencyAir8 = [12.13,12.34,12.39];
averageFrequencyAir8 = mean(frequencyAir8);









frequencyAir =[frequencyAir1,frequencyAir2,frequencyAir3,frequencyAir4,frequencyAir5,frequencyAir6,frequencyAir7,frequencyAir8];
averageFrequencyAir = [averageFrequencyAir1,averageFrequencyAir2,averageFrequencyAir3,averageFrequencyAir4,averageFrequencyAir5,averageFrequencyAir6,averageFrequencyAir7,averageFrequencyAir8];
averageFrequencySquaredAir = averageFrequencyAir.^2;
gradientAirFrequencyAgainstPressure = polyfit(100000:-10000:30000,averageFrequencyAir,1);
bestFitFrequencyAir = polyval(gradientAirFrequencyAgainstPressure,100000:-10000:30000);

figure(1);
hold on;
scatter(100000:-10000:30000, averageFrequencyAir,100,'xk');
plot(100000:-10000:30000, bestFitFrequencyAir,'b-');
xlabel('Absolute Pressure(Pa)');
ylabel('Resonant Frequency(Hz)');
title('Absolute Pressure of Air against Resonant Frequency');
hold off;
legend('Resonant Frequency','Gradient of Data','Location','best');
gradientAirFrequencySquaredAgainstPressure = polyfit(100000:-10000:30000,averageFrequencySquaredAir,1)
bestFitFrequencySquaredAir = polyval(gradientAirFrequencySquaredAgainstPressure,100000:-10000:30000);

figure(2);
hold on;
scatter(100000:-10000:30000, averageFrequencySquaredAir,100,'xk');
plot(100000:-10000:30000,bestFitFrequencySquaredAir,'b-');
xlabel('Absolute Pressure(Pa)');
ylabel('Resonant Frequency Squared(Hz)');
title('Absolute Pressure of Air against Resonant Frequency Squared');
hold off;
legend('Resonant Frequency','Gradient of Data','Location','best');

gammaAir = ((gradientAirFrequencySquaredAgainstPressure(1)*2*M*pi^2*V)/A^2)



%For Helium
%At Absolute Pressure 150,000 Pa
frequencyHelium1 =   [29.55,28.84,28.84];% Hz Systematic uncert = 0.01
averageFrequencyHelium1 =   mean(frequencyHelium1);


%At Absolute Pressure 140,000 Pa
frequencyHelium2 =   [27.11,27.46,27.37];% Hz Systematic uncert = 0.01
averageFrequencyHelium2 =   mean(frequencyHelium2);

%At Absolute Pressure 130,000 Pa
frequencyHelium3 =   [26.09,25.86,25.91];% Hz Systematic uncert = 0.01
averageFrequencyHelium3 =   mean(frequencyHelium3);

%At Absolute Pressure 120,000 Pa
frequencyHelium4 =   [24.93,25.27,25.48];% Hz Systematic uncert = 0.01
averageFrequencyHelium4=   mean(frequencyHelium4);

%At Absolute Pressure 110,000 Pa
frequencyHelium5 =   [23.99,24.30,23.03];% Hz Systematic uncert = 0.01
averageFrequencyHelium5 =   mean(frequencyHelium5);

%At Absolute Pressure 100,000 Pa
frequencyHelium6 =   [23.75,22.27,22.76];% Hz Systematic uncert = 0.01
averageFrequencyHelium6 =   mean(frequencyHelium6);

%At Absolute Pressure 90,000 Pa
frequencyHelium7 =   [21.38,22.74,21.36];% Hz Systematic uncert = 0.01
averageFrequencyHelium7 =   mean(frequencyHelium7);

%At Absolute Pressure 80,000 Pa
frequencyHelium8 =   [21.12,21.74,21.18];% Hz Systematic uncert = 0.01
averageFrequencyHelium8 =   mean(frequencyHelium8);

%At Absolute Pressure 70,000 Pa
frequencyHelium9 =   [20.09,20.30,20.84];% Hz Systematic uncert = 0.01
averageFrequencyHelium9 =   mean(frequencyHelium9);

%At Absolute Pressure 60,000 Pa
frequencyHelium10 =   [19.27,19.30,18.80];% Hz Systematic uncert = 0.01
averageFrequencyHelium10 =   mean(frequencyHelium10);

%At Absolute Pressure 50,000 Pa
frequencyHelium11 =   [17.64,16.28,16.73];% Hz Systematic uncert = 0.01
averageFrequencyHelium11 =   mean(frequencyHelium11);

%At Absolute Pressure 40,000 Pa
frequencyHelium12 =   [16.01,15.84,15.56];% Hz Systematic uncert = 0.01
averageFrequencyHelium12 =   mean(frequencyHelium12);

%At Absolute Pressure 30,000 Pa
frequencyHelium13 =   [15.16,14.50,14.35];% Hz Systematic uncert = 0.01
averageFrequencyHelium13 =   mean(frequencyHelium13);

%At Absolute Pressure 20,000 Pa
frequencyHelium14 =   [13.93,14.25,13.61];% Hz Systematic uncert = 0.01
averageFrequencyHelium14 =   mean(frequencyHelium14);

%At Absolute Pressure 10,000 Pa
frequencyHelium15 =   [13.81,13.30,14.01];% Hz Systematic uncert = 0.01
averageFrequencyHelium15 =   mean(frequencyHelium15);



frequencyHelium =[frequencyHelium1,frequencyHelium2,frequencyHelium3,frequencyHelium4,frequencyHelium5,frequencyHelium6,frequencyHelium7,frequencyHelium8,frequencyHelium9,frequencyHelium10,frequencyHelium11,frequencyHelium12,frequencyHelium13,frequencyHelium14,frequencyHelium15];
averageFrequencyHelium = [averageFrequencyHelium1,averageFrequencyHelium2,averageFrequencyHelium3,averageFrequencyHelium4,averageFrequencyHelium5,averageFrequencyHelium6,averageFrequencyHelium7,averageFrequencyHelium8,averageFrequencyHelium9,averageFrequencyHelium10,averageFrequencyHelium11,averageFrequencyHelium12,averageFrequencyHelium13,averageFrequencyHelium14,averageFrequencyHelium15];
averageFrequencySquaredHelium = averageFrequencyHelium.^2;
gradientHeliumFrequencyAgainstPressure = polyfit(150000:-10000:10000,averageFrequencyHelium,1);

bestFitFrequencyHelium = polyval(gradientHeliumFrequencyAgainstPressure,150000:-10000:10000);

figure(3);
hold on;
scatter(150000:-10000:10000, averageFrequencyHelium,100,'xk');
plot(150000:-10000:10000,bestFitFrequencyHelium,'b-');
xlabel('Absolute Pressure(Pa)');
ylabel('Resonant Frequency(Hz)');
title('Absolute Pressure of Helium against Resonant Frequency');
hold off;
legend('Resonant Frequency','Gradient of Data','Location','best');



gradientHeliumFrequencySquaredAgainstPressure = polyfit(150000:-10000:10000,averageFrequencySquaredHelium,1)
bestFitFrequencySquaredHelium = polyval(gradientHeliumFrequencySquaredAgainstPressure,150000:-10000:10000);

figure(4);
hold on;
scatter(150000:-10000:10000, averageFrequencySquaredHelium,100,'xk');
plot(150000:-10000:10000,bestFitFrequencySquaredHelium,'b-');
xlabel('Absolute Pressure(Pa)');
ylabel('Resonant Frequency Squared(Hz)');
title('Absolute Pressure of Helium against Resonant Frequency Squared');
hold off;
legend('Resonant Frequency','Gradient of Data','Location','best');
gammaHelium = ((gradientHeliumFrequencySquaredAgainstPressure(1)*2*M*pi^2*V)/A^2)

