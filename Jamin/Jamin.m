%%Section 1

pressure = [20,100,200,300,400,500,600,700,800,900,1000];
labTemperature = 21+273;
pipeLength = 0.525;
mercuryWavelength = 5.46100 * 10^-7;
compensatorPlateThickness = 8.02 * 10^-3;
%%Result 1 (Crawford)
sect1result1 = [0,28,67,102,136,165,200,230,261,294,331];
%%Result 2 (Andrew)
sect1result2 = [0,20,45,68,92,116,140,165,191,215,243];
%%Result 3 (Michael)
sect1result3 = [0,25,52,80,102,130,154,179,204,230,260];

sect1averageResult = (sect1result1+sect1result2+sect1result3)/3;
sect1gradient = polyfit(pressure,sect1averageResult,1);

%Graph
figure(1);
scatter(pressure,sect1averageResult,100,'x')
xlabel('Pressure (mbar)');
ylabel('Fringes Passed');
title('Figure 1 : Fringes Passed with varied Pressure (P)');
sect1u= (sect1gradient * mercuryWavelength * 1000 * labTemperature)/(pipeLength * 273)+1

%%Section 2

%Ken's value was 1.61 for glass
deltaDegree = 3;
deltaRad = degtorad(deltaDegree);
sect2result1 = [2,3,2,3,3,3];
sect2result2 = [2,3,3,2,3,2];
sect2result3 = [2,2,2,2,3,3];
sect2AverageResult = (sect2result1 + sect2result2 + sect2result3)/3;

sect2m = sum(sect2AverageResult);


sect2u = 1/(1-((sect2m*mercuryWavelength)/(compensatorPlateThickness*(deltaRad^2))))

%%Section 3

sect3theta1 = 20;

sect3theta2 = 31.5;

sect3counts = [25,25,23,25,24,24,23,22,23,22,22,12];
sect3cumulativecounts = cumsum(sect3counts);

sect3theta=[31.5,30.5,29.5,28.5,27.5,26.5,25.5,24.5,23.5,22.5,21.5,20.5];
%%sect3theta=[31.5,30.5,29.5,28.5,27.5,26.5,25.5,24.5,23.5,22.5,21.5,20.5,20]
figure(2);
scatter(sect3theta,sect3cumulativecounts,100,'x')

sect3u = 1 + ((mercuryWavelength*sum(sect3counts))/pipeLength)
