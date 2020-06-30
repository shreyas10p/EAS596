function [L,U] = spimpalk_hw4_p2(A)
%UNTITLED Summary of this function goes here

[n,m] = size(A);
minNum = min(m,n);
L = eye(minNum);
U = A;
    for j=1:min(n-1,m)
        for i=j+1:n
            L(i,j)=U(i,j)/U(j,j);
            U(i, :)=U(i, :) - L(i,j)*U(j, :);
        end
    end
    if n>m
        U = U(1:m,1:m);
    end
        
    
end


