function number_up(random_num)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Description 
% This program displays a person, a tank and a random number to decide if
% the user dies
%
% Function Call
% number_rand(num)
%
% Input Arguments
% random_num=The random number to display at last
% 
%
% Assignment Information
%   Assignment:     Final project
%   Author:         Adam Fan
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Edward Li
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for j=1:4
    for num=1:6
        if(j==1)
            test_tankman_three()
        elseif(j==2)
            test_tankman_two()
        elseif(j==3 | j==4)
        test_tankman_one()
        end
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
%elseif num==7
%    number_seven()
%elseif num==8
%    number_eight()
%elseif num==9
%    number_nine
        end
        pause(0.2+j*0.1)
        clc
    end
end

    for num=1:random_num
        test_tankman_zero()
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
        end
        pause(0.7+num*0.1)
        if(num~=random_num)
        clc
        end
    end
end