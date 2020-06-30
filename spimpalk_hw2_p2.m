function [num] = spimpalk_hw2_p2(A,i,j,n)
% Summary of this function goes here
%   Detailed explanation goes here
C=A;
num =C(i,j);
for x=1:n-1
    C = A*C;
    num = num+C(i,j);
end

