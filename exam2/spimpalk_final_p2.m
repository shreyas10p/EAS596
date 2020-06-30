function [scores,L] = spimpalk_final_p2()
% spimpalk_final_p2 Summary of this function goes here
% Detailed explanation goes here
    data = load('CityData.mat');
    X = data.ratings;
    X_mean = sum(X)./250;
    for i = 1:250
      for j = 1:9
          X(i,j) = X(i,j) - X_mean(j); % Shifted mean
      end
    end
    COV = X'*X;  %Convergence Matrix
    COV = COV./(250-1);
    [V,D] = eigs(COV);  % Calculating eigen values     
    L = zeros(1,6);  % D is 6*6 diagonal Matrix 
    for j = 1:6
        % L Ordered Vector from largest to smallest
        L(j) = D(j,j);      
    end
    scores = X*V; % PCA score
    %figure();
    %biplot(L(:,1:3),'scores',scores(:,1:3)); 
    %observation 222 outlier
end

