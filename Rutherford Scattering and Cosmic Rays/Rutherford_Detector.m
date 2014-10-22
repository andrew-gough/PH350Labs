clear all;
close all;

% Counting Time was 10 Seconds
countingTime = 10; 

degrees=-20:2:20;

detneg20=[7 4 1 3 1];
detneg18=[2 4 2 5 3];
detneg16=[2 6 4 3 6];
detneg14=[7 10 7 12 5];
detneg12=[13 12 14 8 9];
detneg10=[27 23 25 28 28];
detneg8=[45 48 44 51 39];
detneg6=[120 94 99 99 90];
detneg4=[204 197 198 192 191];
detneg2=[382 388 390 341 378];  
det0=[585 588 598 605 564];
det2=[862 852 833 816 790];
det4=[879 923 922 872 891];
det6=[908 926 944 900 942];
det8=[691 764 732 759 745];
det10=[497 488 508 486 496];
det12=[270 270 256 272 250];
det14=[146 135 143 154 158];
det16=[85 59 58 69 73]; 
det18=[28 34 34 36 33];
det20=[16 25 20 19 19];

degreeCounts=[detneg20;detneg18;detneg16;detneg14;detneg12;detneg10;detneg8;detneg6;detneg4;detneg2;det0;det2;det4;det6;det8;det10;det12;det14;det16;det18;det20];

MeanCounts = mean(degreeCounts.').';

% Uncertainty array
randMeanCountsUncertDiscrim = zeros(length(MeanCounts),1);
for i =1:length(MeanCounts);
     [~, ~, ~, ~, ~, randMeanCountsUncertDiscrim(i)] = statistics(degreeCounts(i,:));
end

figure(2); 
plot(degrees,MeanCounts);               
xlabel('Degrees');
ylabel('Radiation Counts');
title('Radiation Counts as a Function of Degrees from the Normal');

figure(3); 
plot(-26:2:14,MeanCounts);               
xlabel('Corrected Degree   s');
ylabel('Radiation Counts');
title('Radiation Counts as a Function of Degrees from the Normal (Shifted by 6 degrees to account for systematic uncertainty');

logNbyT =log(MeanCounts./countingTime);
log1OverSin4 =log(1./(sind(degrees./2).^4));

figure(4);
plot(logNbyT,log1OverSin4);
xlabel('log(N/t)');
ylabel('log[1/sin^{4}(\theta/2)]');
title('Radiation Counts as a Function of Degrees from the Normal');



