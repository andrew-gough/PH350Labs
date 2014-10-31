% M is the mean of the input vector
% S is the std deviation of the input vector
% V is the variance of the input vector
% max is the maximum of the input vector
% min is the minimum of the input vector
% randErr is the random error of the input vector
function [m,s,v,maxx,minx,randErr] = statistics(x)
n = length(x);
m = sum(x)/n;
v=0;
for i = 1:n 
    v = v +(x(i)-m)^2; 
end
v=(v/(n-1));
s = sqrt(v);
maxx = max(x);
minx = min(x);
randErr = s/sqrt(n);
end
