function [] = spimpalk_hw4_p3()

%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    timeList = [];
    for i=10:20:1000
        A = rand(i,i)+i*eye(i);
            tic;
                spimpalk_hw4_p2(A); 
            toc;
            elaspedTime = toc;
            
            timeList = [timeList;i,elaspedTime];
    end
    loglog(timeList(:,1), timeList(:,2), '-.or');
    xlim([10 1000]);
    ylim([0.1 6]);
    xlabel('Matrix Size n');
    ylabel('Elasped Time t');
    title('Matrix Size vs Elapsed time');
    grid on;
end

%----------------Question 3(b)--------------
% Expected Long term trend is as the matrix size n increases 
% according to the plot the elapsed time increses exponentially
% especially for large values of matrix size n, 
% For small values of n from the graph we can say that 
% exponential increase in elapsed time might not hold for smaller 
% It has big O of n^3 for large values of n
% Increse in elapsed time is linear in case of smaller values
% of n
 