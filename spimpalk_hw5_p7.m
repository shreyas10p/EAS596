m = 7;
n = 2;
x = [0,1,2,3,4,5,6];
y = [-0.02,1.1,5.0,8.5,17.3,26.1,42];
res = [];
res_quad=[];
X = ones(m, n);
X(:,2:n) = x';
a = (X' * X) \ (X' * y');
b = X*a;
for i=x
    res = [res;a(1)+(a(2)*i)];
end
linear_error = norm(res - y');

C = zeros(3,3);
D = zeros(3,1);
c = zeros(3,1);
for row = 1:3
    for col = 1:3
        if(row == 1 && col ==1)
            C(row,col) = m;
            continue
        end
        C(row,col) = sum(x.^(row+col-2));
    end
    D(row) = sum(x.^(row-1).*y);
end
c= C\D;
% Plot the best fit line.
plot(x, b);
title(sprintf('y = %f + %fx,\t y=%f%fx+%fx^2', a(1), a(2),c(1),c(2),c(3)));
xlabel('x');
ylabel('y');
for i=x
    res_quad = [res_quad;c(1)+(c(2)*i)+(c(3)*i*i)];
end
quad_error = norm(res_quad - y');
hold on;
xn = [0:0.1:6];
yn = polyval(c(end:-1:1),xn);
plot(xn,yn,'g')
% Plot the input data.
plot(x, y, '^r');
hold off;

