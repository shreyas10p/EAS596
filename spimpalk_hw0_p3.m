function [f] = spimpalk_hw0_p3(n)
% Function to calculate factorial using while loop
    if n<0
        error('Number must be greater than or equal to zero');
    end    
    f = 1;
    while n>1
        f = f*n;
        n = n-1;
    end
        
end

