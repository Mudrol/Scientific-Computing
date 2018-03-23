function [ x ] = sqrt_square( x, n )
%sqrt_square takes the square root of x n times and then squares the result
%n times. The function returns the result x.
%   n must be an integer and greater than 0. Also all elements in x needs
%   to be positive. Otherwise an error will be printed.
assert(all(x>=0),'Error: all elements must be positive.')
assert(n>=1, 'Error: n must be greater than 0.')
assert(n==round(n), 'Error: n must be an integer.')
for i=1:n
    x=sqrt(x);
end

for i=1:n
    x=x.^2;
end

end

