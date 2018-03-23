function [ A ] = Normalize_cols( A, p )
%Normalize_cols divides each column of A by its p-norm.
%The second argument p is optional. If it is not given, it is set to 2.
narginchk(1,2)
if nargin < 2
    p = 2;
end

for j = 1:length(A(:,1))
    p_norm = norm(A(:,j),p);
    A(:,j) = A(:,j)./p_norm;
end