function [f] = spimpalk_hw10_p2(L, x, xList, yList)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
[m,num] = size(xList);
f=0;
for i= 1:num
   f =f+ yList(i)*L(x,i,xList);
end

end

