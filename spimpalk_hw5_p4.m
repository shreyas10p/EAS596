function [Q,R] = spimpalk_hw5_p4(A)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    [m,n]=size(A);
    Q = A;
    R = zeros(n);
    for j=1:n
        for i=1:j-1
            R(i,j) = Q(:,i)'*Q(:,j);
            Q(:,j) = Q(:,j)-Q(:,i)*R(i,j);
        end
        R(j,j) = norm(Q(:,j));
        Q(:,j) = Q(:,j)/R(j,j);
    end

end

