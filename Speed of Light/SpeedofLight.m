%Speed of Light in Air


% d1 - d2 = 2*(pos1-pos2);
%50.1KHz
f1 = 5.010* 10^5;%Hz
lengthOfRod = 106.4;%m
%81.5,187.9

airPos1 = [24.1,24.2,24.5,24.1,24.5];
airPos2 = [173.5,173.2,174.0,173.5,173.3];
aird1minusd2 = 2*(airPos2-airPos1);
airSpeedOfLight = 2*f1 * mean(aird1minusd2)


%Speed of Light in Water

waterPos1 = airPos1;
waterPos2 = [40.2,39.8,40.6,40.1,40.3];

waterd1minusd2 = 2*(waterPos2-waterPos1);
waterSpeedOfLight = (lengthOfRod * airSpeedOfLight)/(lengthOfRod + mean(waterd1minusd2))

%Speed of Light in Perspex


perspexPos1 = airPos1;
perspexPos2 = [51.9,52.5,51.3,51.5,52.3];

perspexd1minusd2 = 2*(perspexPos2 - perspexPos1);
perspexSpeedOfLight = (lengthOfRod * airSpeedOfLight)/(lengthOfRod + mean(perspexd1minusd2))

