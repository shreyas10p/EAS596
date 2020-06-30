integral_val = sqrt(5)-sqrt(2)+atanh(sqrt(2))-atanh(sqrt(5));
err_list = [];
h_list = [];
err_list_odd = [];
h_list_odd = [];
func = @(x) ((1+(x.^-2)).^0.5);
for num = 11:50:999
    simpson_val = spimpalk_hw10_p3(func,1,2,num);
    err = abs(simpson_val-integral_val);
    err_list_odd = [err_list_odd,err];
    h_list_odd = [h_list_odd,(1/num)];
end

for num = 10:50:1000
    simpson_val = spimpalk_hw10_p3(func,1,2,num);
    err = simpson_val-integral_val;
    err_list = [err_list,err];
    h_list = [h_list,(1/num)];
    
end
poly = polyfit(log10(h_list), log10(err_list), 1);
poly_odd = polyfit(log10(h_list_odd), log10(err_list_odd), 1);
p1 = loglog(h_list,err_list,'-*b');
hold on
p2 = loglog(h_list_odd,err_list_odd,'-or');
hold off
grid on;
xlabel('h');
ylabel('Error e');
title('h vs Error');
h = [p1;p2];
legend(h,{'Even Values of N y=3.99x-1.577','Odd values of N y = 1.008x+0.0506'});
%Expected order of line 4 