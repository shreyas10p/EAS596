function [B] = spimpalk_hw7_p5(A,p)
    %UNTITLED Summary of this function goes here
    %   Detailed explanation goes here
    mat_rank = rank(A);
    if p<mat_rank
        [U,S,V] = svd(A);
        X = U(:,1:p)*S(1:p,1:p);
        B = X*V(:,1:p)';
    else
        B = A;
    end
end

