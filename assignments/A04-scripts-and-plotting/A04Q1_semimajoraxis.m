%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This program aims to estimate the semi-major axis of spacecraft orbit
%
% Assignment Information
%   Assignment:     A04, Problem Q1
%   Author:         Adam Fan
%   Team ID:        3
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
format longg

%% I named the variable in a way that makes it look similar to the corresponding variables in the formula, 
%% so that it's more debuggable
%% INITIALIZATION
u = 398600.4418;
R = 6378.1363;
J_2 = 0.001082635;
T = [23 56 4];
N_d = 27;
N_p = 385;
a_0 = 6500;
icn = 98.5705;
n = sqrt(u/a_0^3);
w = (2 * pi) / (T(1) * 3600 + T(2) * 60 + T(3));

%% Inclination is of type deg, so cos and sin should be cosd and sind
%% CALCULATIONS
f_a = (3 * J_2 * R^2 * n / (2 * a_0^2)) * ...
    (N_d*(3-4*sind(icn)^2) - N_p*cosd(icn)) - ...
    N_p * w + N_d * n;
fprime_a = (-21 * sqrt(u) * J_2 * R^2)/(4*a_0^(9/2)) * ...
    (N_d*(3-4*sind(icn)^2) - N_p*cosd(icn)) - ...
    (3*N_d*sqrt(u))/(2*a_0^(5/2)); 
a_1 = a_0 - f_a/fprime_a;


%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf("The predicted semi-major axis is: %.5f km\n", a_1)


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.


