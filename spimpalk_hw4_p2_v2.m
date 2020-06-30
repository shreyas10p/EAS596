function [L,U] = spimpalk_hw4_p2_v2(A)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    [m,n] = size(A);
    minNum = min(m,n);
    L = eye(minNum);
    U = A;
    for i=1:min(m-1,n)
        for j=i+1:m
            L(j,i) = U(j,i)/U(i,i);
            U(i,i) = 0;
            for k=i+1:n
                U(j,k) = U(j,k)-L(j,i)*U(i,k);
            end
        end
    end
    if m>n
        U = U(1:n,1:n);
    end
        
end

