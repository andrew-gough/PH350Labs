pressure = [20,100,200,300,400,500,600,700,800,900,1000];
labTemperature = 21+273;
pipeLength = 0.525;
mercuryWavelength = 5.46100 * 10^-7;
%%Result 1 (Crawford)
result1 = [0,28,67,102,136,165,200,230,261,294,331];
%%Result 2 (Andrew)
result2 = [0,20,45,68,92,116,140,165,191,215,243];
%%Result 3 (Michael)
result3 = [0,25,52,80,102,130,154,179,204,230,260];

averageResult = (result1+result2+result3)/3;
gradient = polyfit(pressure,averageResult,1)
scatter(pressure,averageResult)

refractive = (gradient * mercuryWavelength * 1000 * labTemperature)/(pipeLength * 273)+1