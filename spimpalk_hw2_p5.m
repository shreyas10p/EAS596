%question 5 A multiplication%
M = [1/4 1/3;3/4 2/3];
p = [2/3;1/3];
X = M*p;
disp(X)
B = M*M;
disp(B*p)


%question 5 B multiplication%
K = [1/2 1/3 0;0 2/3 1/2;1/2 0 1/2];
l=[1/3;1/6;1/2];
disp(K*l);
N = K*K;
disp(N*l);

%question 5 C multiplication%
D = [1/4 1/3 1/2;1/2 1/3 1/6;1/4 1/3 1/3];
y = [1/4;1/2;1/4];
disp(D*y);
J = D*D;
disp(J*y)