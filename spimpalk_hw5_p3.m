function [ Q,R ] = spimpalk_hw5_p3( A )
    [m,n]=size(A);
    Q = A;
    R = zeros(n);
    for j=1:n
        R(1:j-1,j) = Q(:,1:j-1)'*Q(:,j);
        Q(:,j) = Q(:,j)-Q(:,1:j-1)*R(1:j-1,j);
        R(j,j) = norm(Q(:,j));
        Q(:,j) = Q(:,j)/R(j,j);
    end
end



