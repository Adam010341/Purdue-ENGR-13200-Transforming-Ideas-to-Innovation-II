function [max_vol,flu_vol,t]=drain_time(arg,h,drain_dia,pos)
    %arg=[len,dia]
    g=9.806;
    C_d=0.8;
    len=arg(1);
    r=arg(2)/2;
    A_n=(drain_dia/2)^2*pi;
    max_vol=r^2*pi*len;

    if pos==90
        t=(pi*arg(2)^2)*(h^(1/2))/((9*g)^(1/2)*C_d*A_n);
        flu_vol=r^2*pi*h;
        fprintf('Tank orientation: Vertical\n')
    elseif pos==0
        t=len*8^(1/2)*(arg(2)^(3/2)-(arg(2)-h)^(3/2))/(3*C_d*A_n*g^(1/2));
        flu_vol=len*(acos((r-h)/r)*r^2-(r-h)*(2*r*h-h^2)^(1/2));
        fprintf('Tank orientation: Horizontal\n')
    else
        t=-99;
        flu_vol=-99;
        fprintf('Tank orientation: Invalid\n')
    end
    fprintf('Maximum volume of the tank:%f\n',max_vol)
    fprintf('Fluid volume:%f\n',flu_vol)
    fprintf('Drainage time:%f\n',t)
end
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Program Description 
%This program calculates the drainage time of a given tank
%
% Function Call
% [max_volume_of_tank,fluid_volume,drainage_time]=drain_time(arg,height,drain_diameter,orientation)
%
% Input Arguments
% arg=[tank_length,tank_diameter]
% height=tank_height
% drain_diamter=diamter of the drain
% orientation=orientation of the tank (vertical or horizontal)
%
% Output Arguments
% max_vol - Maximum volume of the tank
% flu_vol - Volume of fluid in the tank
% t - Time taken to drain the tank
%
% Assignment Information
%   Assignment:     A08, Q2
%   Author:         Adam Fan
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Let the user enter the parameters
%% INITIALIZATION
arg=str2num(input('Enter the length and diameter of the tank:','s'));
h=input('Enter height of the fluid:');
drain_dia = input('Enter the diameter of the drain: ');
pos = input('Enter the orientation of the tank (0 for horizontal, 90 for vertical): ');



%% Call the function with the the given variables
%% CALCULATIONS & FORMATTED TEXT DISPLAY

[max_vol, flu_vol, t] = drain_time(arg, h, drain_dia, pos);

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



