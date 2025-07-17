function result=roulette(stake)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Description 
% This program displays the animation for a roulette
%
% Function Call
% result=roulette(stake)
%
% Input Arguments
% stake is the stake that the user has bet
% 
% Output Arguments
% result is the amount of stake after winning or losing (Returns to
% reoulette_main())
%
% Assignment Information
%   Assignment:     Final project
%   Author:         Adam Fan
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

number=str2num(input('Input one number:','s'))

%x=randi([37,80]);
x=randi([number+36,number+44]);

%elseif type==2
%    number=str2num(input('Input two numbers:','s'))
%elseif type==3
%    number=str2num(input('Input three numbers:','s'))
%end

%initialize 12x12 board
board=test_board();

%Display board
for k=1:3
    for m=37:80
        for i=1:12
            for j=1:12
                if(board(i,j)==m)
                    fprintf(" O ")
                elseif (board(i,j)>=37 | board(i,j)==0)
                    fprintf("   ")
                else
                    fprintf("%2i ",board(i,j))
                end
                if(j==12)
                    fprintf("\n")
                end
            end
        end
        pause(0.08)
        clc
    end
end

    for m=37:x
        for i=1:12
            for j=1:12
                if(board(i,j)==m)
                    fprintf(" O ")
                elseif (board(i,j)>=37 | board(i,j)==0)
                    fprintf("   ")
                else
                    fprintf("%2i ",board(i,j))
                end
                if(j==12)
                    fprintf("\n")
                end
            end
        end
        pause(0.08+0.02*(sqrt(m)))
        if(m~=+x)
        clc
        end
    end

    if((x==37 | x==38 | x==80) & number==1)
        fprintf("Jackpot! 3500%% reward:\n")
        result=stake*35;
        fprintf("%i\n",result)
    elseif ((x==47 | x==48 | x==49) & number==10)
        fprintf("Jackpot! 3500%% reward:\n")
        result=stake*35;
        fprintf("%i\n",result)
    elseif ((x==58 | x==59 | x==60) & number==19)
        fprintf("Jackpot! 3500%% reward:\n")
        result=stake*35;
        fprintf("%i\n",result)
    elseif ((x==71 | x==69 | x==70) & number==28)
        fprintf("Jackpot! 3500%% reward:")
        result=stake*35;
        fprintf("%i\n",result)
    elseif (x<47 & x>38 & number==x-37)
        fprintf("Jackpot! 3500%% reward:")
        result=stake*35;
        fprintf("%i\n",result)
    elseif (x<58 & x>49 & number==x-39)
        fprintf("Jackpot! 3500%% reward:")
        result=stake*35;
        fprintf("%i\n",result)
    elseif (x<69 & x>60 & number==x-41)
        fprintf("Jackpot! 3500%% reward:")
        result=stake*35;
        fprintf("%i\n",result)
    elseif (x<80 & x>71 & number==x-43)
        fprintf("Jackpot! 3500%% reward:")
        result=stake*35;
        fprintf("%i\n",result)
    else
        fprintf("Failed attempt, return 30%% of stake:")
        result=stake*0.3;
        fprintf("%i\n",result)
    end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%37 38 39 40 41 42 43 44 45 46 47 48
%80  1  2  3  4  5  6  7  8  9 10 49   
%79 36                         11 50   
%78 35                         12 51   
%77 34                         13 52   
%76 33                         14 53   
%75 32                         15 54   
%74 31                         16 55   
%73 30                         17 56   
%72 29                         18 57   
%71 28 27 26 25 24 23 22 21 20 19 58   
%70 69 68 67 66 65 64 63 62 61 60 59
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                                