function [f] = spimpalk_hw0_p2(n)
% Function to compute factorial of n 
%  factorial of n
    if n<0
        error('number must be greater than or equal to 0');
    end
    f=1;
    for i= n:-1:1
        f=f*i;
    end
end

