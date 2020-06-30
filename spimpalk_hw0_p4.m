function [v] = spimpalk_hw0_p4(f,x)
%Function to evaluate function and scalar
     if isa(f, 'function_handle')
         v = f(x);
     else
        error('Parameter must be a function');
     end

end

