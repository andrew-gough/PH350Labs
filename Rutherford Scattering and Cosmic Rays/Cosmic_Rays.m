clear all
close all;


% Data collected at zenith angle 0 degrees (Straight up) and gain 1000

discrimUp   =0.5:0.5:5;  
discrimup05count = [115,120,101,115,115];
discrimup1count =  [104,71,87,82,112];
discrimup15count=  [89,118,107,101,85];
discrimup2count =  [79,93,69,75,99];
discrimup25count = [92,93,90,76,89];
discrimup3count =  [99,85,87,97,70];
discrimup35count = [83,107,73,87,132];
discrimup4count =  [88,65,83,98,86];
discrimup45count = [84,95,82,82,75];
discrimup5count =  [67,87,56,76,88];

discrimUpTotalCounts= [discrimup05count;discrimup1count;discrimup15count;discrimup2count;discrimup25count;discrimup3count;discrimup35count;discrimup4count;discrimup45count;discrimup5count];

averageUpTotalCounts=mean(discrimUpTotalCounts.');

% Uncertainty array
randUpUncertDiscrim = zeros(length(averageUpTotalCounts),1);
for i =1:length(discrimUpTotalCounts);
    [~, ~, ~, ~, ~, randUpUncertDiscrim(i)] = statistics(discrimUpTotalCounts(i,:));
end
    
%{
figure(1);
plot(discrimUp,averageUpTotalCounts);              
xlabel('Discriminator');
ylabel('Cosmic Ray Detections');
title('Cosmic Ray Detections as a Function of the Discriminator Setting (Zenith Angle 0{\circ})');
%}
 

% Data collected at zenith angle 180 degrees (Straight down) and gain 1000


discrimDown   =0.5:0.5:5;
discrimdown05count = [41,38,35,40,40];
discrimdown1count =  [41,50,40,31,30];
discrimdown15count=  [36,34,29,42,39];
discrimdown2count =  [31,34,37,39,41];
discrimdown25count = [43,50,27,41,30];
discrimdown3count =  [36,38,43,30,29];
discrimdown35count = [33,33,30,36,33];
discrimdown4count =  [28,38,36,30,37];
discrimdown45count = [35,29,23,29,37];
discrimdown5count =  [33,45,27,32,19];    

discrimDownTotalCounts= [discrimdown05count;discrimdown1count;discrimdown15count;discrimdown2count;discrimdown25count;discrimdown3count;discrimdown35count;discrimdown4count;discrimdown45count;discrimdown5count];

averageDownTotalCounts=mean(discrimDownTotalCounts.');

% Uncertainty array
randDownUncertDiscrim = zeros(length(averageDownTotalCounts),1);
for i =1:length(discrimDownTotalCounts);
    [~, ~, ~, ~, ~, randDownUncertDiscrim(i)] = statistics(discrimDownTotalCounts(i,:));
end

%{
figure(2);
plot(discrimDown,averageDownTotalCounts);              
xlabel('Discriminator');
ylabel('Cosmic Ray Detections');
title('Cosmic Ray Detections as a Function of the Discriminator Setting(Zenith Angle 180{\circ})');
%}

% Plot bia curves(counts vs discriminator) on same graph;
figure(3);
plot(discrimUp,averageUpTotalCounts,discrimDown,averageDownTotalCounts);
xlabel('Discriminator');
ylabel('Cosmic Ray Detections');
title('Cosmic Ray Detections as a Function of the Discriminator Setting');
legend('Cosmic Ray Count for Zenith Angle 0{\circ}','Cosmic Ray Count for Zenith Angle 180{\circ}');


% Plot bia curves(counts vs discriminator) on same log graph;
figure(4);
semilogy(discrimUp,averageUpTotalCounts,discrimDown,averageDownTotalCounts);
xlabel('Discriminator');
ylabel('Cosmic Ray Detections');
title('Cosmic Ray Detections as a Function of the Discriminator Setting');
legend('Cosmic Ray Count for Zenith Angle 0{\circ}','Cosmic Ray Count for Zenith Angle 180{\circ}');


% Plot the true cosmic ray count as a function of the discriminator
% setting

averageUpMinusDownTotalCounts = averageUpTotalCounts - averageDownTotalCounts;

figure(5);
plot(discrimDown,averageUpMinusDownTotalCounts);              
xlabel('Discriminator');
ylabel('True Cosmic Ray Count(Zenith Angle 0{\circ} minus Zenith Angle 180{\circ})');
title('True Cosmic Ray Count as a Function of the Discriminator Setting');


theta = -90:6:90;
cosSquaredTheta = cos(degtorad(theta)).^2;


%Plot of the ideal count(Cos^2) as theta varies 
figure(6);
plot(theta,cosSquaredTheta);
xlabel('{\theta}{\circ}');
ylabel('Cos^2 {\theta}');
title('Cos^2 {\theta} as Angle {\theta} varies');

intensityCount=[82;91;100;97;129;137;134;112;162;157;165;156;207;172;192;184;178;172;187;146;155;172;125;133;120;141;107;119;103;88;81];

%Plot of Intensity count against the theta angle
figure(7);
plot(theta,intensityCount);
xlabel('Zenith Angle({\theta}{\circ})');
ylabel('Intensity');
title('Intensity as a function of Zenith Angle {\theta}{\circ}');

% Corrected intensity count is the intensity minus the background radiation

Nup = 63;

figure(8);
correctedIntensityCount = intensityCount-Nup;
plot(theta,correctedIntensityCount);
xlabel('Zenith Angle({\theta}{\circ})');
ylabel('Corrected Intensity ');
title('Correction Intensity as a function of Zenith Angle {\theta}{\circ}');
 
NEast = sum(correctedIntensityCount(1:15))
NWest = sum(correctedIntensityCount(17:end))




