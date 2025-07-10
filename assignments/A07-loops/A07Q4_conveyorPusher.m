%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% The program extracted measured data and pluged them into the given
% formula to obtain the work done on each displacement
%
% Assignment Information
%   Assignment:     A07, Q4
%   Author:         Adam Fan
%   Team ID:        3
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Input data from the csv file and extract it to other arrays
%% INITIALIZATION
data=readmatrix('data_pusher_force_displacement.csv')
dp = data(:,2)
force = data(:,3)

%% Plug the variables into the formula
%% CALCULATIONS
walt(1)=0;
for k=2:length(dp)
    walt(k)=walt(k-1)+(force(k)+force(k-1))/2*(dp(k)-dp(k-1));
    k=k+1;
end
%% Plot the data with titles and x-y labels
%% FORMATTED FIGURE DISPLAY
subplot(2,1,1)
plot(dp,force)
title('force with respect to displacement')
xlabel('displacement(m)')
ylabel('force(N)')

subplot(2,1,2)
plot(dp,walt)
title('Joules with respect to displacement')
xlabel('displacement (m)')
ylabel('Jouels (J)')



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.







