# EAS596

Homework and assignments for Numerical Maths course.
 Exam 2
 Question 1:
 
 This problem will use a simple Monte Carlo method to determine the mean and variance of the
deflection and angle of a simple circular cantilever beam.
You have been provided a MATLAB function [deflect, angle] =
eas596 final beamDeflection(F, E, d), which takes as input the force at the tip, F, the elastic
modulus, E, and the diameter of the beam, d. It returns the deflection of the tip, deflect, and
the angle of deflection of the tip, angle.
Assume that the force, elastic modulus, and diameter all obey Gaussian distributions with the
following means and standard deviation:
         μ               σ
F (N)    1000            10
E (Pa)   200 × 10^9      2.5 × 10^9
d (m)    10^−2           5 × 10^−4

Create a MATLAB function [mu, V] = spimpalk_final_p1(n) which returns a 2 × 1 vector mu
which has the sample mean for deflection in location 1 and that for the angle in location 2. The
matrix V is the covariance matrix between the deflection and angle. The input n is the number of
random samples to draw

Question 2: 

This problem will use Principal Component Analysis to determine outliers from a given data set.
The file CityData.mat contains ratings for nine categories for 250 cities. The file has three pieces
of information:
• names: A length-250 vector containing the anonymized city IDs, from 1 to 250.
• categories: A length-9 cell-array listing the nine categories each city is rated on.
• ratings: A 250×9 matrix with the ratings for each city.
Create a MATLAB function [scores, L] = ubitname final p2() which does the following:
1. Load the data using load(’CityData.mat’);
2. Performs the principal component analysis (PCA) on ratings. Note that this has 9-data
points of interest and 250-observations/samples.
3. Returns the principal magnitude (eigenvalues) in L as an ordered-vector from largest to
smallest.
4. Determines the PCA scores for all principal directions and returns it in scores.
