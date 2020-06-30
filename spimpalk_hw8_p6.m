function [] = spimpalk_hw8_p6()
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
    F = @(x) [(x(1)^2)+(x(2)^2)-0.75;sin(pi*x(1))-(x(2)^3)];
    x0=[0;1E-6];
    %x0=[0;0.1];
    options = optimoptions('fsolve','Display','off', 'FunctionTolerance', 1e-8);
    x = fsolve(F,x0,options);
    fdf =@spimpalk_hw8_p4;
    eas596_hw8_p5(fdf,x0,x);
    x0=[0;-1E-6];
    %x0=[0;-0.1];
    x = fsolve(F,x0,options);
    eas596_hw8_p5(fdf,x0,x);
end

