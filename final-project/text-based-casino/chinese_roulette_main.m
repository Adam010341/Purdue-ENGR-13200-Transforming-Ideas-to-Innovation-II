function result=chinese_roulette_main(all_chips)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Description 
% This program is an altered version of russion roulette
%
% Function Call
% result=chinese_roulette_main(all_chips)
%
% Input Arguments
% all_chips is all the chips that the player possess, the player cannot
% choocse how much to bet
% 
% Output Arguments
% result is the amount of stake after winning or losing (Returns to
% mian function
%
% Assignment Information
%   Assignment:     Final project
%   Author:         Adam Fan
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Edward Li
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf("You have entered China Roulette\n")
fprintf("Game rultes:\n")
fprintf("1.Pick a number from 1 to 6, if it's correct, 896400%% reward.\n")
fprintf("2.The player will be executed if the guess is incorrect.\n")
fprintf("3.You can only all-in in this game.\n")

status1=0;

while status1==0
    cmd=input('Enter (s) to start the game, (q) to quit the game:','s');
    if strcmp(cmd,"s")==1
        result=china_roulette(all_chips);
        if(result==0)
            status1=1;
        end
    elseif strcmp(cmd,"q")==1
        status1=1;
        fprintf("Final chips:%i\n",result);
    else
        disp('Invalid input');
    end
end
end


