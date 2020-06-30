function [] = spimpalk_hw8_p5()
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    fdf =@spimpalk_hw8_p4;
    x0=[0;1E-6]; 
    %x0=[0;0.1];
    tol = 1e-8;
    x = spimpalk_hw8_p3(fdf,x0,tol);
    eas596_hw8_p5(fdf,x0,x);
    x0=[0;-1E-6];
    %x0=[0;0.1];
    x = spimpalk_hw8_p3(fdf,x0,tol);
    eas596_hw8_p5(fdf,x0,x);
end

