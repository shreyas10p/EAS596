function [Q,R] = spimpalk_hw6_p1(A)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    R = A;
    [m,n] = size(A);
    Q = eye(m);
    for k = 1:n
        x = R(k:m,k);
        e = zeros(m-k+1,1);
        e(1) = 1;
        if x(1)==0
            s = 1;
        else
            s = sign(x(1));
        end
        v = s*(norm(x)*e)+x;
        v = v ./ norm(v);
        R(k:m,k:n) = R(k:m,k:n) - 2*v*(v'*R(k:m,k:n));
        Q(k:m,:) = Q(k:m,:) - 2*v*(v'*Q(k:m,:));
    end
    Q = Q';
end

