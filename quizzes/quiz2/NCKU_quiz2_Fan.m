%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NCKU-Purdue | Quiz 2 Template
% Semester: Summer 2025
% Name: Adam Fan
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
format shortg
%% Q2 | DATA PLOTTING

% Calendar months for each year (1 = Jan, 2 = Feb, etc)
cal_months = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

% Hospital beds per month per year (thousands of beds)
hosp_beds_2000 = [920, 918, 919, 922, 923, 924, 922, 921, 910, 908, 902, 900];
hosp_beds_2010 = [820, 818, 820, 821, 825, 827, 828, 826, 825, 827, 828, 827];
hosp_beds_2020 = [900, 902, 910, 915, 920, 930, 940, 938, 936, 940, 942, 943];

% Plot the data
plot(cal_months,hosp_beds_2020,'bd')
hold on
plot(cal_months,hosp_beds_2010,'ms')
hold on
plot(cal_months,hosp_beds_2000,'ro')
title('Hospital beds available in the US for the years 2000, 2010, and 2020')
xlabel('month')
ylabel('hospital beds')
legend('2020','2010','2000','location','northwest')




%% Q3 | SELECTION STRUCTURES
x=input('Input X:')
if(x>9)
    x=log(x)
elseif x>=0 & x<=9
    x=sqrt(x)
else disp('Did not meet criteria')
end





%% Q4 | Logic
% friction force matrix for first test (newtons)
forceMat1 = [57    61    56    64    45    73;
             70    46     0    77    55    45;
             77    68    87    84     0    76;
             64     0     0    64    60    74;
             90    66    57    72    52    88]

% friction force matrix for second test (newtons)
forceMat2 = [56    82    85    63    55    55;
             71    50    57    79    86    69;
             66    81    89    82    78    84;
             55    72    75    76    63    77;
             58    70    64    76    85    77]

partA=find(forceMat1<67 | forceMat2>77)



%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.