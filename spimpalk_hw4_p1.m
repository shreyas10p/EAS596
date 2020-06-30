function [] = spimpalk_hw4_p1()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    syms x h
    f = cos(x);
    df = diff(f);
    result = double(subs(df,pi/5));
    y = logspace(-1,-16,100);
    derf = (cos(x+h)-cos(x))/h;
    stepList = [];
    for i=1:1:100
        error = result-double(subs(derf, {x h}, {pi/5 y(i)}));
        stepList = [stepList;y(i),error];
        
    end
    loglog(stepList(:,1), stepList(:,2), '-.or');
    grid on;
    xlabel('Stepsize h');
    ylabel('Error e');
    title('Step-size vs Error');
end

% ------------------Question 1 (b)---------------------------------------
% Best step size to use for the graph is 10^-16 in this question because as h
%(step size) decreases error also decreases as step size increases error also 
% increases as concluded from the graph generated above.Therefore , step size 
% should be as low as possible. 
