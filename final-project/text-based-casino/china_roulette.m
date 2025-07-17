function result=china_roulette(all_chips)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Description 
% This program displays the animation for chinese_roulette_main
%
% Function Call
% result=china_roulette(all_chips)
%
% Input Arguments
% all_chips is all the chips that the user has
% 
% Output Arguments
% result is the amount of stake after winning or losing (Returns
% chinese_roulette_main)
%
% Assignment Information
%   Assignment:     Final project
%   Author:         Adam Fan
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Edward Li
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
guess=input("Pick a number from 1 to 6:")
x=randi([1,6]);

number_up(x)
if guess~=x 
    clc
    test_tankman_dead();
    pause(1)
    result=0;
    fprintf(2,"Wrong guess, user deleted\n")
else 
    result=all_chips*8964;
    fprintf("\n")
    fprintf("You survived! 896400%% reward:%i", result)
end

end