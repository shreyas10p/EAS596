cgs_tlist = [];
mgs_tlist = [];
inbuilt_tlist = [];
hh_tlist = [];
for i=10:18:1000
    A = rand(i,i);
    tic
        spimpalk_hw5_p3(A);% classical gram-schmidt
    cgs_t = toc;
    cgs_tlist = [cgs_tlist;i,cgs_t];
    
    tic
        spimpalk_hw5_p4(A);% modified gram-schmidt
    mgs_t = toc;
    mgs_tlist = [mgs_tlist;i,mgs_t];
   
    tic
        qr(A);% inbuilt qr
    inbuilt_t = toc;
    inbuilt_tlist = [inbuilt_tlist;i,inbuilt_t];
   
    tic
        spimpalk_hw6_p1(A);% classical gram-schmidt
    hh_t = toc;
    hh_tlist = [hh_tlist;i,hh_t];
    
end
figure;
p1 = loglog(cgs_tlist(:,1), cgs_tlist(:,2), '^-r');
hold on;
p2 = loglog(mgs_tlist(:,1), mgs_tlist(:,2), '*-g');
p3 = loglog(inbuilt_tlist(:,1), inbuilt_tlist(:,2), 'V-b');
p4 = loglog(hh_tlist(:,1), hh_tlist(:,2), 's-y');
% ---Average Trend--
%x_mean=sum([cgs_tlist(:,2),mgs_tlist(:,2),inbuilt_tlist(:,2),hh_tlist(:,2)],2)./4;
%p5 = loglog(cgs_tlist(:,1),x_mean,':m');
%----
hold off;

title('Matrix Size vs Elapsed time');
ylabel("Time Taken");
xlabel('Matrix Size(n)');
grid on;
h = [p1,p2,p3,p4];
legend(h,{'Classical gram-schimdt','Modified gram-schimdt','In-built-QR','Household Refelctor'});

