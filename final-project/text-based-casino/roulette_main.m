function result=roulette_main(chips)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Description 
% This program is the UI of roulette
%
% Function Call
% result=roulette(stake)
%
% Input Arguments
% stake is the stake that the user has bet
% 
% Output Arguments
% result is the amount of stake after winning or losing (Returns to main
% function)
%
% Assignment Information
%   Assignment:     Final project
%   Author:         Adam Fan
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf("Game rules:\n")
fprintf("1. A roulette wheel has numbers from 0 to 36.\n")
fprintf("2. You place bets on where the ball will land after the wheel spins.\n")
fprintf("3. Winner will receive 3500%% reward! \n")
fprintf("4. Failed bet will only return 30%% of the current stake.\n")

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
        result=result+roulette(stake);
        status2=0;
    elseif strcmp(cmd,"q")==1
        status1=1;
        fprintf("Final chips:%i\n",result)
    else
        disp('Invalid input');
    end
end

end