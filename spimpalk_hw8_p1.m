function [x] = spimpalk_hw8_p1(f, a, b, tol)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    fa = f(a); 
    fb = f(b);
    while abs(f(a+b)/2) > tol
        m = (b+a)/2;
        fm = f(m);
        if(abs(fm))<tol 
            break
        end
        if(fm * fa)<0 
            b=m; 
            fb= fm;
        else
            a=m; 
            fa = fm; 
        end
    end
    x = (a + b)/2; 
end
