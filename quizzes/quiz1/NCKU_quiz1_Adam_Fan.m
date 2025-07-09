%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Quiz 1 Template
% Semester: Summer 2024
% Name: Adam Fan
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
format shortg
%% Q2 | MATLAB CALCULATION
%% Operators on arrays should add a period
x = [0.66, 0.23, 0.58, 0.29, 0.43]; 
y = [0.7, 0.23, 0.63, 0.5, 0.56];
z = [0.38, 0.42, 0.35, 0.42, 0.38];
b=(4*x.^2+1).*(y*sin(pi/3)./z+(y+1)./z.^(1/4)).^2

%% Q3 | ARRAY INDEXING
%% array elements can be indexed through array(row,cols)
radius = [1 2 3; 4 5 6; 12 22 32];
radius(2,2:3)=[7,9]




%% Q4 | ARRAY SORTING
%% sort function sorts array in ascending order
vec2 = [7, 4, 2, 4, 1, 1, 6, 6, 8, 1, 0]
vec2_sorted=sort(vec2)




%% Q5 | STATISTICS
%% mean function calculate the man value of each column, so the birghtMat1 matrix should be tranposed to get the mean value of each row
brightMat1=[1892 1333 1970;1069 1249 0;1962 1858 1826]
A = mean(brightMat1.')




%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.