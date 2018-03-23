function [ y ] = cantor( x, n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
assert(n>0,'Error: n must be a positive integer.');
assert(n==round(n),'Error: n must be a positive integer.');
y = 1:length(x);
for i = 1: length(x)
    y(i) = cantor_aux(x(i),n);
end

end
function [ cantor_n ] = cantor_aux( x, n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if n > 0
   
    if (x >= 0) && (x <= 1/3)
       cantor_n = (1/2)*cantor_aux(3*x,n-1);
    elseif (x > 1/3) && (x <= 2/3)
        cantor_n = 1/2;
    elseif (x > 2/3) && (x <= 1)
        cantor_n = 1/2+(1/2)*cantor_aux(3*x-2,n-1);
    end
    
else
    cantor_n = x;
end
end

