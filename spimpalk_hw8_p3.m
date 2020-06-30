function [x] = spimpalk_hw8_p3(fdf,x0,tol)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    [fval,Jval] = fdf(x0);
    f2norm = norm(fval);  % l2 norm of vector
    counter = 0;
    while abs(f2norm) > tol 
        del = (Jval\-fval);
        x0 = x0 + del;
        if(counter > 100)
            error('Iterations greater than 100')
        end
        [fval,Jval] = fdf(x0);
        f2norm = norm(fval);
        counter = counter+1;
    end
    x=x0;

end
