% Function to round a matrix to the specified number of decimal places
function [roundedN] = roundN(x,decPlaces)
roundedN = num2str(sprintf(strcat('%.',num2str(decPlaces),'f'),x));
end
