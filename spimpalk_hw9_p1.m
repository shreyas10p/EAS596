function [x,f] = spimpalk_hw9_p1(fun,x0,tol,maxIter)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    f1 = @(x1,x2) (1-x1).^2+100*(x2-x1.^2).^2;
    x = x0;
    for i = 1:maxIter
        [fval,gval,hval]=fun(x0);
        %x0 = x0 - (0.75*(gval/hval));
        x0 = x0 - (0.75*(hval\gval));
        x = x0;
        if  (abs(gval)<tol)
            break;
        end
    end
    f = fval;

end


