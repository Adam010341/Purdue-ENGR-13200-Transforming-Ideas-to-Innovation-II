%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Script for MATLAB Skills - Selection Structure
%
% Assignment Information
%   Assignment:     A05, Q3
%   Author:         Adam Fan
%   %   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% SELECTION STRUCTURE
A=input('Enter A')
if A<-47
    A=A/13
elseif A<-20 | A>=201
    A=A/6
elseif A>105 & A<=142
    A=A/13
elseif A>=36 & A<87
    A=A*-4
else
    disp('A is invalid')
end



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.