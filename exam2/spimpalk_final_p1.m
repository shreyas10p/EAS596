function [mu,V] = spimpalk_final_p1(n)
%spimpalk_final_p1 Summary of this function goes here
%   Detailed explanation goes here
    deflectList =zeros(1,n); 
    angleList = zeros(1,n);
    V = zeros(2,2);
    for i = 1:n
        force = normrnd(1000,10);
        modulus = normrnd(200*(1e9),2.5*(1e9));
        diameter = normrnd(1e-2,5*(1e-4));
        [deflect,angle] = eas596_final_beamDeflection(force, modulus, diameter);
        deflectList(i) = deflect;
        angleList(i) = angle;
    end
    deflectMean = sum(deflectList)./n;
    angleMean = sum(angleList)./n;
    mu = [deflectMean;angleMean];
    for j = 1:n
        V(1,1) = V(1,1)+((deflectList(j)-deflectMean).^2);
        V(2,2) = V(2,2)+((angleList(j)-angleMean).^2);
        V(1,2) = V(1,2)+((deflectList(j)-deflectMean)*(angleList(j)-angleMean));
    end
    V(1,1) = V(1,1)./(n-1);
    V(2,2) = V(2,2)./(n-1);
    V(1,2) = V(1,2)./(n-1);
    V(2,1) = V(1,2);
    
end


