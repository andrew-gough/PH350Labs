%Distances
%Saturates at small X
%Establish the saturation range


%x in millimeters
%t in micro seconds

pressureInBar = 1.027; %bars


%Cursory measurements taken to determine saturation point, delta x = 50cm
x1 = 985;
t1 = 5580.30;

x2 = 950;
t2 = 5376.00;

x3 = 900;
t3 = 5088.30;

x4 = 850;
t4 = 4799.80;

x5 = 800;
t5 = 4501.60;

x6 = 750;
t6 = 4221.70;

x7 = 700;
t7 =  3932.60;

x8 = 650;
t8 = 3642.30 ;

x9 = 600;
t9 = 3353.30 ;

x10 = 550;
t10 = 3063.20;

x11 = 500;
t11 = 2773.50;

x12 = 450;
t12 = 2484.20;

x13 = 400;
t13 = 2194.80;

x14 = 350;
t14 = 1906.40;

x15 = 340;
t15 = 1846.20;

x16 = 330;
t16 = 1781.10;

x17 = 320; 
t17 = 1721.70;

x18 = 310;
t18 = 1664.70;

x19 = 305;
t19 = 1659.80;

x20 = 300;
t20 = 1659.80;

x21 = 250;
t21 = 1659.60;

x22 = 200;
t22 = 1660;

x23 = 150;
t23 = 1659;

x24 = 100;
t24 = 1659;

%Saturation Point has been established as 305cm






x = [x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24];
t = [t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23,t24];

figure(1);
plot(x./1000,t);
title('Cursory measurement of saturation point');
xlabel('Distance(mm)') % x-axis label
ylabel('Time(ms)') % y-axis label

%Results

%x is distance
%t is time
%tuncert is the uncertainty in the measured time
%temp is temperature
%h is relative humidity
%p is pressure in mb
p =1027;

x1=310;
t1=1662.66;
tuncert1 =0.47;
temp1=24.5;
h1=63.6;

x2=320;
t2=1719.34;
tuncert2 =0.93;
temp2=24.6;
h2=64.5;

x3=330;
t3=1778.76;
tuncert3 =0.43;
temp3=24.5;
h3=64.1;

x4=340;
t4=1836.52;
tuncert4 =1.43;
temp4=24.5;
h4=64.2;

x5=350;
t5=1894.56;
tuncert5 =0.50;
temp5=24.5;
h5=65;

x6=360;
t6=1958.02;
tuncert6 =0.454;
temp6=24.5;
h6=63.7;

x7=370;
t7=2019.76;
tuncert7 =0.43;
temp7=24.3;
h7=64.9;


x8=380;
t8=2078.96;
tuncert8=0.28;
temp8=24.3;
h8=64.4;

x9=390;
t9=2135.24;
tuncert9= 0.51;
temp9=24.3;
h9=64.6;

x10=400;
t10=2193.46;
tuncert10= 0.50;
temp10=24.3;
h10=64.6;

x11=410;
t11=2251.36;
tuncert11= 0.48;
temp11=24.2;
h11=64.7;

x12=420;%blaze it
t12=2307.54;
tuncert12= 0.50;
temp12=24.2;
h12=66.4;

x13=430;
t13= 2366.27;
tuncert13= 0.44;
temp13=24.3;
h13=65.0;

x14=440;
t14= 2424.44;
tuncert14= 0.50;
temp14=24.3;
h14=64.2;

x15=450;
t15=  2481.56;
tuncert15= 0.50;
temp15=24.3;
h15=65.5;

x16=460;
t16= 2539.34;
tuncert16= 0.68;
temp16=24.3;
h16=64.9;

x17=470;
t17= 2596.56;
tuncert17= 0.90;
temp17=24.4;
h17=67.4;

x18=480;
t18= 2656.30;
tuncert18= 0.46;
temp18=24.6;
h18=66.6;

x19=490;
t19= 2712.86;
tuncert19= 0.69;
temp19=24.5;
h19=64.8;

x20=500;
t20= 2771.80;
tuncert20= 0.40;
temp20=24.5;
h20=64.3;

x21=510;
t21= 2831.06;
tuncert21= 0.65;
temp21=24.5;
h21=64.2;

x22=520;
t22= 2888.12;
tuncert22= 0.43;
temp22=24.5;
h22=65.1;

x23=530;
t23= 2944.94;
tuncert23= 0.81;
temp23=24.3;
h23=65.9;

x24=540;
t24= 3004.02;
tuncert24= 0.14;
temp24=24.4;
h24=64.9;

x25=550;
t25= 3060.12;
tuncert25= 0.68;
temp25=24.4;
h25=64.9;

x26=560;
t26= 3118.20;
tuncert26= 0.77;
temp26=24.5;
h26=65.1;

x27=570;
t27= 3175.92 ;
tuncert27= 0.66;
temp27=24.4;
h27=64.9;

x28=580;
t28=3234.12 ;
tuncert28= 0.52;
temp28=24.5;
h28=64.6;

x29=590;
t29=3292.68 ;
tuncert29= 0.58;
temp29=24.5;
h29=64.8;

x30=600;
t30=3349.64 ;
tuncert30= 0.52;
temp30=24.5;
h30=64.3;

x31=610;
t31=3407.20;
tuncert31= 0.45;
temp31=24.5;
h31=64.0;

x32=620;
t32=3466.02;
tuncert32= 0.42;
temp32=24.5;
h32=64.5;

x33=630;
t33=3524.34;
tuncert33= 0.47;
temp33=24.6;
h33=68.4;

x34=640;
t34=3581.46;
tuncert34= 0.57;
temp34=24.6;
h34=67.4;

x35=650;
t35=3640.12;
tuncert35= 0.65;
temp35=24.6;
h35=64.8;

x36=660;
t36=3697.26;
tuncert36= 0.63;
temp36=24.6;
h36=64.9;

x37=670;
t37=3755.98;
tuncert37= 0.42;
temp37=24.6;
h37=66.7;

x38=680;
t38=3813.12;
tuncert38= 0.65;
temp38=24.6;
h38=64.9;

x39=690;
t39=3870.84;
tuncert39= 0.58;
temp39=24.6;
h39=64.5;

x40=700;
t40=3926.82;
tuncert40= 0.99;
temp40=24.5;
h40=64.0;

x41=710;
t41=3986.88;
tuncert41= 0.59;
temp41=24.5;
h41=65.1;

x42=720;
t42=4043.84;
tuncert42= 0.54;
temp42=24.5;
h42=64.1;

x43=730;
t43=4102.80;
tuncert43= 0.60;
temp43=24.5;
h43=65.1;

x44=740;
t44=4160.28;
tuncert44= 0.49;
temp44=24.5;
h44=64.4;

x45=750;
t45=4218.60;
tuncert45= 0.49;
temp45=24.5;
h45=64.1;

x46=760;
t46=4275.94;
tuncert46= 0.76;
temp46=24.6;
h46=68.6;

x47=770;
t47= 4333.72;
tuncert47= 0.57;
temp47=24.5;
h47=65.2;

x48=780;
t48= 4391.44;
tuncert48= 0.54;
temp48=24.5;
h48=64.5;

x49=790;
t49= 4450.74;
tuncert49= 0.59;
temp49=24.6;
h49=64.8;

x50=800;
t50= 4504.22;
tuncert50= 0.54;
temp50=24.6;
h50=64.2;

x51=810;
t51= 4563.52;
tuncert51= 0.50;
temp51=24.7;
h51=65.3;

x52=820;
t52= 4621.40;
tuncert52= 0.50;
temp52=24.7;
h52=65.5;

x53=830;
t53= 4679.16;
tuncert53= 0.50;
temp53=24.7;
h53=65.8;

x54=840;
t54= 4736.24;
tuncert54= 0.43;
temp54=24.7;
h54=65.8;

x55=850;
t55= 4794.34;
tuncert55= 0.59;
temp55=24.7;
h55=64.6;

x56=860;
t56= 4853.80;
tuncert56= 0.45;
temp56=24.7;
h56=65.4;

x57=870;
t57= 4911.68;
tuncert57= 0.47;
temp57=24.7;
h57=64.4;

x58=880;
t58= 4967.80;
tuncert58= 0.94;
temp58=24.7;
h58=65.3;

x59=890;
t59= 5027.96;
tuncert59= 0.45;
temp59=24.8;
h59=66.3;

x60=900;
t60= 5085.08;
tuncert60= 0.59;
temp60=24.8;
h60=64.0;

x61=910;
t61= 5143.00;
tuncert61= 0.57;
temp61=24.8;
h61=63.9;

x62=920;
t62= 5201.28;
tuncert62= 0.72;
temp62=24.8;
h62=64.3;

x63=930;
t63= 5258.52;
tuncert63= 0.67;
temp63=24.8;
h63=64.9;


x64=940;
t64= 5316.78;
tuncert64= 0.58;
temp64=25.0;
h64=65.7;

x65=950;
t65= 5373.96;
tuncert65= 0.45;
temp65=25.0;
h65=64.3;

x66=960;
t66= 5432.48;
tuncert66= 0.67;
temp66=25.0;
h66=63.9;

x67=970;
t67= 5489.80;
tuncert67= 0.57;
temp67=25.0;
h67=63.9;

x68=980;
t68= 5546.80;
tuncert68= 0.57;
temp68=25.0;
h68=66.2;

x = [x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68];
t = [t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t40,t41,t42,t43,t44,t45,t46,t47,t48,t49,t50,t51,t52,t53,t54,t55,t56,t57,t58,t59,t60,t61,t62,t63,t64,t65,t66,t67,t68];
tuncert = [tuncert1,tuncert2,tuncert3,tuncert4,tuncert5,tuncert6,tuncert7,tuncert8,tuncert9,tuncert10,tuncert11,tuncert12,tuncert13,tuncert14,tuncert15,tuncert16,tuncert17,tuncert18,tuncert19,tuncert20,tuncert21,tuncert22,tuncert23,tuncert24,tuncert25,tuncert26,tuncert27,tuncert28,tuncert29,tuncert30,tuncert31,tuncert32,tuncert33,tuncert34,tuncert35,tuncert36,tuncert37,tuncert38,tuncert39,tuncert40,tuncert41,tuncert42,tuncert43,tuncert44,tuncert45,tuncert46,tuncert47,tuncert48,tuncert49,tuncert50,tuncert51,tuncert52,tuncert53,tuncert54,tuncert55,tuncert56,tuncert57,tuncert58,tuncert59,tuncert60,tuncert61,tuncert62,tuncert63,tuncert64,tuncert65,tuncert66,tuncert67,tuncert68];
temp = [temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9,temp10,temp11,temp12,temp13,temp14,temp15,temp16,temp17,temp18,temp19,temp20,temp21,temp22,temp23,temp24,temp25,temp26,temp27,temp28,temp29,temp30,temp31,temp32,temp33,temp34,temp35,temp36,temp37,temp38,temp39,temp40,temp41,temp42,temp43,temp44,temp45,temp46,temp47,temp48,temp49,temp50,temp51,temp52,temp53,temp54,temp55,temp56,temp57,temp58,temp59,temp60,temp61,temp62,temp63,temp64,temp65,temp66,temp67,temp68];
h = [h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13,h14,h15,h16,h17,h18,h19,h20,h21,h22,h23,h24,h25,h26,h27,h28,h29,h30,h31,h32,h33,h34,h35,h36,h37,h38,h39,h40,h41,h42,h43,h44,h45,h46,h47,h48,h49,h50,h51,h52,h53,h54,h55,h56,h57,h58,h59,h60,h61,h62,h63,h64,h65,h66,h67,h68];


% Uncertainty arrays

randUncertX = zeros(1);
[~, ~, ~, ~, ~, randUncertX] = statistics(x(:));


randUncertTemp = zeros(1);
[~, ~, ~, ~, ~, randUncertTemp] = statistics(temp(:));


randUncertHumid = zeros(1);
[~, ~, ~, ~, ~, randUncertHumid] = statistics(h(:));


v= (x./1000)./((t./10^6)/2); 

randUncertV = zeros(1);
stdDevV = zeros(1);
[~, stdDevV, ~, ~, ~, randUncertV] = statistics(v(:));
randUncertV
stdDevV

percentageUncert = tuncert./t;

meanTemp = mean(temp);  %Average Temp   is 24.5588
meanHumidity = mean(h); %Average Humid  is 64.9971
saturatedVapour= 23.198; %Saturated Vapour Pressure at 24.6 would be between 24 and 25
actualVapourPressure = saturatedVapour*meanHumidity/100;
pressureInTorr = pressureInBar*750.06375541921;
waterFracNumDensity = actualVapourPressure/pressureInTorr;
waterWetPercentage = waterFracNumDensity;

averageMoleMassForDryAir = (28.013*0.7808)+(32.000*0.2095)+(0.0093*39.948)+(0.0003*44.000);


nitrogenDryPercentage = 0.7808;
oxygenDryPercentage = 0.2095;
argonDryPercentage = 0.0093;
CO2DryPercentage = 0.0003;

nitrogenGamma= 1.404;
oxygenGamma =1.401;
argonGamma = 1.668;
CO2Gamma = 1.304;
waterGamma = 1.31;

nitrogenMoleMass = 28.013;
oxygenMoleMass = 32.000;
argonMoleMass = 39.948;
CO2MoleMass = 44.000;
waterMoleMass = 18.000;


nitrogenWetPercentage = nitrogenDryPercentage*(1-waterWetPercentage);
oxygenWetPercentage = oxygenDryPercentage*(1-waterWetPercentage);
argonWetPercentage = argonDryPercentage*(1-waterWetPercentage);
CO2WetPercentage = CO2DryPercentage*(1-waterWetPercentage);


wetAirGamma     =(nitrogenWetPercentage*nitrogenGamma)+(oxygenWetPercentage*oxygenGamma)+(argonWetPercentage*argonGamma)+(CO2WetPercentage*CO2Gamma)+(waterWetPercentage*waterGamma);
wetAirMoleMass  =(nitrogenWetPercentage*nitrogenMoleMass)+(oxygenWetPercentage*oxygenMoleMass)+(argonWetPercentage*argonMoleMass)+(CO2WetPercentage*CO2MoleMass)+(waterWetPercentage*waterMoleMass);        

meanTempInKelvin = meanTemp + 273.15;
gasConstant = 8.3145; 
theoreticalSpeedOfSound = sqrt((wetAirGamma*gasConstant*meanTempInKelvin)/(wetAirMoleMass/1000));


figure(2)
plot(x./1000,t);
title('Distance against Time Taken for Echo to Return');
xlabel('Distance(mm)') % x-axis label
ylabel('Time Taken for Echo to Return (ms)') % y-axis label

figure(3)
plot(x./1000,tuncert);
title('Distance against Absolute Uncertainty in Time');
xlabel('Distance(m)') % x-axis label
ylabel('Absolute Uncertainty in time (ms)') % y-axis label

figure(4)
plot(x./1000,percentageUncert);
title('Distance against Percentage Uncertainty in Time');
xlabel('Distance(m)') % x-axis label
ylabel('Percentage Uncertainty in time (ms)') % y-axis label

figure(5)
plot(x./1000,temp);
title('Distance against Temperature');
xlabel('Distance(m)') % x-axis label
ylabel('Temperature ({\circ} Celsuis)') % y-axis label

figure(6)
plot(x./1000,h);
title('Distance against Relative Humidity');
xlabel('Distance(m)') % x-axis label
ylabel('Relative Humidity (%)') % y-axis label

figure(7)
plot(x./1000,v);
title('Distance against Speed of Sound');
xlabel('Distance(m)') % x-axis label
ylabel('Speed of Sound (ms^{-1})') % y-axis label


experimentalSpeedOfSound = mean(v)
theoreticalSpeedOfSound



close all;
gradOfXandT = polyfit(x,t,1);