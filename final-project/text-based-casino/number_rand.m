function number_rand(num)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Description 
% This program displays a larger for of integer "num"
%
% Function Call
% number_rand(num)
%
% Input Arguments
% The number user wants to display
% 
%
% Assignment Information
%   Assignment:     Final project
%   Author:         Adam Fan
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%for j=1:4
 %   for k=1:9
        fprintf("\n")
        if num==1
            number_one()
        elseif num==2
            number_two()
        elseif num==3
            number_three()
        elseif num==4
            number_four()
        elseif num==5
            number_five()
        elseif num==6
            number_six()
        elseif num==7
            number_seven()
        elseif num==8
            number_eight()
        elseif num==9
            number_nine()
        end
        %pause(0.3+j*0.1)
        %clc
end