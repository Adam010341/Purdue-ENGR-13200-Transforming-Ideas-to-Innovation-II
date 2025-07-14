function A11Q3_airPolution()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This function calculates the linear regression of two given set of gas
% emission data with respect to year as well as the goodness of fit
% equations, and then plot the measured data along with the calculated
% trend line.
%
% Function Call
% A11Q3_airPolution()
%
% Input Arguments
% This function does not require any input.
%
% Output Arguments
% This function does not have an output argument.
%
% Assignment Information
%   Assignment:     A11, Q3
%   Author:         Adam Fan
%   Team ID:        3
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Extract data from the given csv file
%% INITIALIZATION
data1=readmatrix('co2_mm_gl.csv');
yearCo=data1(:,3);
avCo=data1(:,4);
data2=readmatrix('ch4_mm_gl.csv');
yearCh=data2(:,3);
avCh=data2(:,4);

coef_co=polyfit(yearCo,avCo,1); %0.0018   -3.3158 *1000
coef_ch=polyfit(yearCh,avCh,1); %0.0055   -9.2978 *1000

y_co=polyval(coef_co,yearCo);
y_ch=polyval(coef_ch,yearCh);

%% Calculate the goondess of fit equation (co)
%% CALCULATIONS (co)
SSE_co=0;
for k=2:length(yearCo)
    SSE_co=SSE_co+(avCo(k)-(coef_co(1)*yearCo(k)+coef_co(2)))^2;
end

y_avg_co=sum(avCo)/length(avCo);

SST_co=0;
for j=2:length(yearCo)
    SST_co=SST_co+(avCo(j)-y_avg_co)^2;
end

r_co=1-(SSE_co/SST_co);

%% Calculate the goondess of fit equation (ch)
%% CALCULATIONS (ch)
SSE_ch=0;
for k=2:length(yearCh)
    SSE_ch=SSE_ch+(avCh(k)-(coef_ch(1)*yearCh(k)+coef_ch(2)))^2;
end

y_avg_ch=sum(avCh)/length(avCh);

SST_ch=0;
for j=2:length(yearCh)
    SST_ch=SST_ch+(avCh(j)-y_avg_ch)^2;
end

r_ch=1-(SSE_ch/SST_ch);


%% Display the calculated result (co)
%% FORMATTED TEXT DISPLAYS (co)
fprintf("Model equation for CO2: y = %.4fx + %.4f\n", coef_co(1), coef_co(2));
fprintf("Goodness of fit equations of CO2:\n")
fprintf("SSE:%f\n",SSE_co)
fprintf("SST:%f\n",SST_co)
fprintf("r^2:%f\n",r_co)

%% Display the calculated result (ch)
%% FORMATTED TEXT DISPLAYS (ch)
fprintf("Model equation for CH4: y = %.4fx + %.4f\n", coef_ch(1), coef_ch(2));
fprintf("Goodness of fit equations of CH4:\n")
fprintf("SSE:%f\n",SSE_ch)
fprintf("SST:%f\n",SST_ch)
fprintf("r^2:%f\n",r_ch)


%% Plot two figures in the same page.
%% FORMATTED FIGURE DISPLAYS
subplot(2,1,1)
hold on
plot(yearCo,y_co,'-')
plot(yearCo,avCo,'r')
xlabel("Decimal year")
ylabel("Average CO2 (ppm)")
legend("Trend line","Measured data")
hold off
subplot(2,1,2)
hold on
plot(yearCh,y_ch)
plot(yearCh,avCh)
xlabel("Decimal year")
ylabel("Average CH4 (ppb)")
legend("Trend line","Measured data")


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



