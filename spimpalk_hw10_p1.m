function [l] = spimpalk_hw10_p1(x,i,xList)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
l=1;
[m,num] = size(xList);
for j = 1:num
    if(i~=j)
        l=l*(x-xList(j))/(xList(i)-xList(j));
    end
end

end

