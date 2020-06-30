function [l,v] = spimpalk_hw7_p4(A,v0)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes herev
lam0 = v0'*A*v0;
v(:,1) = v0;
lam(1) = lam0;
k=2;
diff=1;
while diff > 10^-8
	v(:,k) = (A-(lam(k-1)*eye(size(A))))\v(:,k-1);
	v(:,k)=v(:,k)/norm(v(:,k));              
	lam(k)= v(:,k)'*A*v(:,k);
    diff = abs((lam(k) - lam(k-1)))/abs(lam(k));
    k = k+1;
end
l = lam(k-1);
v = v(:,k-1);
end

