%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This program calculates the linear regression of wire bondfailure
% with respect to Chloride Concentration 
%
% Assignment Information
%   Assignment:     A11, Q2
%   Author:         Adam Fan
%   Team ID:        3
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Extract data from the .txt file
%% INITIALIZATION
data=readmatrix('data_NaCltest_bondfailure.txt');
con=data(:,1);
fail=data(:,2);
SSE=0;
SST=0;



%% Calculate the coefficient
%% REGRESSION CALCULATIONS

p=polyfit(con,fail,1);
%y=75.797x-1.1732

%% Calculate the predicted y axis model and the goodness of fit results
%% PREDICTION CALCULATIONS

y_model=polyval(p,con);

for k=2:length(con)
    SSE=SSE+(fail(k)-p(1)*con(k)+p(2))^2;
end

y_avg=sum(fail)/length(fail);
for j=2:length(con)
    SST=SST+(fail(j)-y_avg)^2;
end

r=1-(SSE/SST);

%% Display the goodness of fit results and least-squares function
%% FORMATTED TEXT DISPLAYS
fprintf('The linear equation is:y=%fx%f\n',p(1),p(2))
fprintf('SSE:%f\n',SSE)
fprintf('SST:%f\n',SST)
fprintf('r^2:%f\n',r)
fprintf('Predicted bond failure rate at 0.125μg/cm^2:%f\n',p(1)*0.125+p(2))
fprintf('Predicted bond failure rate at 0.255μg/cm^2:%f\n',p(1)*0.255+p(2))
%% Plot the original data and the linear regression data
%% FORMATTED FIGURE DISPLAYS
hold on
plot(con,fail,'ro')
plot(con,y_model)

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The script I am submitting
% is my own original work.



