%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Script for MATLAB Skills - FOR Loop
%
% Assignment Information
%   Assignment:     A07, Q3
%   Author:         Adam Fan
%   Team ID:        3
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Initialization
M=4
N=12
S=2
Z=[6 3 26 20 10 12 26 13 13]
%% ____________________
%% FOR LOOP
for i=1:length(Z)-1
    i=i+1
    T=M-length(Z)
    V=N*(length(Z)-M)
    S=S+T+V
end
S




%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.