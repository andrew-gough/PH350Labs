%Speed of Light in Air


% d1 - d2 = 2*(pos1-pos2);
%50.1KHz
f1 = 5.010* 10^5;
lengthOfRod = 187.9-81.5;
%81.5,187.9

airPos1 = [24.1,24.2,24.5,24.1,24.5];
airPos2 = [173.5,173.2,174.0,173.5,173.3];
aird1minusd2 = 2*(mean(airPos2)-mean(airPos1));
airSpeedOfLight = 2*f1 * aird1minusd2


%Speed of Light in Water

waterPos1 = [40.2];
waterPos2 = mean(airPos1);
waterSpeedOfLight = (lengthOfRod * airSpeedOfLight)/(lengthOfRod + 2*(waterPos1 - waterPos2))

%Speed of Light in Perspex

perspexPos1 = [51.9];
perspexPos2 = mean(airPos1);
perspexSpeedOfLight = (lengthOfRod * airSpeedOfLight)/(lengthOfRod + 2*(perspexPos1 - perspexPos2))