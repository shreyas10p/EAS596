function [val] = spimpalk_hw10_p3(f, a, b, n)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
h=(b-a)/n;
total_area=0;
for num=1:n/2               %Reimann Sum
    interval_area = (1/3)*h*(f(a+(2*num-2)*h)+4*f(a+(2*num-1)*h)+f(a+2*num*h));
    total_area=total_area+interval_area;
end
val=total_area;
end

