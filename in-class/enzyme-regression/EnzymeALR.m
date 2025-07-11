%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% replace this text with your program decription as a comment
%
% Assignment Information
%   Assignment:     A##, Problem #
%   Author:         Name, login@purdue.edu
%   Team ID:        ###-##
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
% did you complete the assignment information? delete this line if yes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Extract data of the first 90 seconds from csv file
%% INITIALIZATION
EnzymeAdata=readmatrix('EnzymeA_data.csv');
time=EnzymeAdata(5:94,1);
P375=EnzymeAdata(5:94,2);
p=polyfit(time,P375,1);
y_model=polyval(p,time);

%% Calculate the coefficients, SST, SSE, r^2 and r
%% CALCULATIONS

%y=0.019x+0.0897
SSE(1)=0;
for k=2:length(time)
    SSE(k)=(P375(k)-0.019*time(k)+0.0897)^2;
end
fprintf('SSE:%f\n',sum(SSE))

SST(1)=0;
y_avg=sum(P375)/length(P375);
for j=2:length(time)
    SST(j)=(P375(j)-y_avg)^2;
end
fprintf('SST:%f\n',sum(SST))
fprintf('r^2:%f\n',1-(sum(SSE)/sum(SST)))
fprintf('r:%f\n',sqrt(1-(sum(SSE)/sum(SST))))





%% Plot the figure
%% FORMATTED TEXT & FIGURE DISPLAYS
hold on
plot(time,P375)
plot(time,y_model)

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.


