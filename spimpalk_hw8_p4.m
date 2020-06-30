function [f,J] = spimpalk_hw8_p4(x)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    %syms x1 x2
    %f1 = @(x1,x2) (x1^2)+(x2^2)-0.75;
    %f2 = @(x1,x2) (sin(pi*x1)-(x2^3));
    %j11 = diff(f1,x(1));
    %j12  = diff(f1,x(2));
    %j21 = diff(f2,x(1));
    %j22  = diff(f2,x(2));
    f = [(x(1)^2)+(x(2)^2)-0.75;sin(pi*x(1))-(x(2)^3)];
    %J = [subs(j11) subs(j12);subs(j21) subs(j22)];
    J = [2*x(1) 2*x(2);pi*cos(pi*x(1)) (-3*(x(2)^2))];
end
