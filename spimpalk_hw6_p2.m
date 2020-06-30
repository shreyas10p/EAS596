cgs = [];
mgs = [];
inbuilt_qr = [];
hh_qr = [];
x = 2:1:11;
for n = 2:11
    
    A = hilb(n); % Hilbert matrix
    [Q,R] = spimpalk_hw5_p3(A); % Classical gram-schimdt decomposition
    norm(eye(n)-Q'*Q); % Orthogonality test
    cgs = [cgs,norm(eye(n)-Q'*Q)];
    [Q2,R2] = spimpalk_hw5_p4(A);
    norm(eye(n)-Q2'*Q2);
    mgs = [mgs,norm(eye(n)-Q2'*Q2)];
    [Q3,R3] = qr(A);
    norm(eye(n)-Q3'*Q3);
    inbuilt_qr = [inbuilt_qr,norm(eye(n)-Q3'*Q3)];
    [Q4,R4] = spimpalk_hw6_p1(A);
    norm(eye(n)-Q4'*Q4);
    hh_qr = [hh_qr,norm(eye(n)-Q4'*Q4)];
end

figure;
p1 = semilogy(x,cgs,'^-b');
hold on;
p2 = semilogy(x,mgs,'V-r');
p3 = semilogy(x,inbuilt_qr,'s-g');
p4 = semilogy(x,hh_qr,'*-y');
hold off;
ylabel("||Q'Q-I||");
xlabel('Matrix Size(n)');
h = [p1;p2;p3;p4];
legend(h,{'Classical gram-schimdt','Modified gram-schimdt','In-built-QR','household Q-R'});