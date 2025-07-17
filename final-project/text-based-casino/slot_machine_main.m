function result=slot_machine_main(chips)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Description 
% This program is the UI of slot machine
%
% Function Call
% result=slot_machine_main(stake)
%
% Input Arguments
% stake is the stake that the user has bet
% 
% Output Arguments
% result is the amount of stake after winning or losing (Returns to
% main function)
%
% Assignment Information
%   Assignment:     Final project
%   Author:         Adam Fan
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf("Game rultes:\n")
fprintf("1.There will be three random numbers on the slot machine after you press start\n")
fprintf("2.Three consecutive numbers: 500%% reward\n")
fprintf("2.Three same number n:\n")
fprintf("    2-1.n~=7: 800%% reward\n")
fprintf("    2-2.n=7: 1000%% reward\n")
fprintf("3.Other combinations of number:Return 30%% of stake\n")

status1=0;
status2=0;
result=chips;


while status1==0
    cmd=input('Enter (s) to start the game, (q) to quit the game:','s');
    if strcmp(cmd,"s")==1
        while status2==0
            stake=input('Please input the stake:');
            if stake<100
                disp('The stake has to be more than 100')
            else
                status2=1;
                result=result-stake;
            end
        end
        result=result+number_rand_main(stake);
        status2=0;
    elseif strcmp(cmd,"q")==1
        status1=1;
        fprintf("Final chips:%i\n",result)
    else
        disp('Invalid input');
    end
end

end