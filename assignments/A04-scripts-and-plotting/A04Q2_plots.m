%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Script for MATLAB Skills - Plots
%
% Assignment Information
%   Assignment:     A04, Q2
%   Author:         Adam Fan
%   Team ID:        3
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Initialize the variables
%% INITIALIZATION
x = [44, 52, 61, 68, 72, 72, 80, 80];
y1 = [1469, 1272, 1026, 922, 795, 656, 484, 450];
y2 = [2165, 1747, 1654, 1509, 1121, 1004, 845, 644];

%% plot x-y1 chart as figure 1
%% FIGURE 1
figure(1)
plot(x,y1,'--o')
title('Cost corresponding to area')
xlabel('Cost (USD)')
ylabel('Area (square meters)')

%% plot x-y1 chart and x-y2 chart as firgure 2
%% FIGURE 2
figure(2)
subplot(2,1,1)
plot(x,y1,'--o')
title('Cost corresponding to area')
xlabel('Cost (USD)')
ylabel('Area (square meters)')
subplot(2,1,2)
plot(x,y2,'--o')
title('Cost corresponding to area')
xlabel('Cost (USD)')
ylabel('Area (square meters)')

%% plot x-y1 and x-y2 in the same chart as figure 3
%% FIGURE 3
figure(3)
plot(x,y1,'--o')
hold on
plot(x,y2,'--o')
title('Cost corresponding to area')
xlabel('Cost (USD)')
ylabel('Area (square meters)')

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.






