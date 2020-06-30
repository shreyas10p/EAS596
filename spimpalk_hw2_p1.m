function [length] = spimpalk_hw2_p1(A,i,j)
% Summary of this function goes here
%   Detailed explanation goes here
    length = 1;
    C=A;
    while(length<21 && C(i,j)== 0)
        C = C*A;
        length =length+1;
    end
    if ((length > 20) && (C(i,j) == 0))
        error('Path length larger than 20')
    end
end

