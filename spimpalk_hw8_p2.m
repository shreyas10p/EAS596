function [x] = spimpalk_hw8_p2(f,df,x0,tol)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
counter = 0;
lim = abs(f(x0));
while (lim>tol)
    x=x0-f(x0)./df(x0);
    lim=abs(f(x));
    x0=x;
    if(counter > 100)
        error('Iterations greater than 100')
    end
    counter=counter+1;
end

end

