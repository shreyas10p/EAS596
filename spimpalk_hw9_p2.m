function [f,g,h] = spimpalk_hw9_p2(x)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
%syms x1 x2;
%func = (1-x1).^2+100*(x2-x1.^2).^2;

%dfx1 = diff(func,x1)
%subs(dfx1,[x1, x2],[x(1), x(2)])
%dfx2 = diff(func,x2)
f = (1-x(1)).^2+100*(x(2)-x(1).^2).^2;
g = [(400*x(1).^3) - 400*x(1)*x(2) + 2*x(1) - 2; 200*(x(2)-x(1).^2)];
h = [1200*x(1).^2 - 400*x(2) + 2, -400*x(1); -400*x(1), 200];

end

