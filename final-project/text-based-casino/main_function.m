%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Description 
% This program is a main function of our casino game which include the
% basic setting
%
% Function Call
% function main_function()
%
% Input Arguments
% N
% 
% Output Arguments
% N
% Assignment Information
%   Assignment:     Main function
%   Author:         Andy Gao
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Adam Fan
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function main_function()
    % CSV file name
    filename = 'player_records.csv';
    
    user_name = input('Please enter your name: ', 's');

 %=======find if users play this game before and keep using their chips======
    if isfile(filename)
        data = readtable(filename);
       % check if 'status' is exist 
        if ~ismember('Status', data.Properties.VariableNames)
            data.Status = repmat("Live", height(data), 1);
        end
        idx = strcmp(data.Name, user_name);
        if any(idx) && data.Chips(idx) <= 0
            disp('This user has been removed due to bankruptcy.');
            disp('You cannot reuse this name.');
            return;  % End the program here
        end

        if any(idx)
            chips = data.Chips(idx);
            disp(['Welcome back, ', user_name, '! You have ', num2str(chips), ' chips.']);
        else
            chips = 1000;
            disp(['Welcome, ', user_name, '! Starting with 1000 chips.']);
        end
    else %if no file exist yet,create a new file===================

        data = table({}, [], {}, 'VariableNames', {'Name', 'Chips', 'Status'});
        chips = 1000; %intitail chips for every user
        disp(['Welcome, ', user_name, '! Starting with 1000 chips.']);
    end

    pause(1.5);

    while true
        
        disp('-----------------------------');
        disp('Press s  to show your current chips');
        disp('Press g1 to enter Slot Machine');
        disp('Press g2 to enter Roulette');
        disp('Press g3 to enter Shoot Dragon Gate');
        disp('Press q  to quit');
        disp('Press g4 to enter Chinese Roulette')
        disp('Press r to see all players ranking')

        choice = input('Your choice: ', 's');
%========== enter the game or quit ===========================
       switch lower(choice)
            case 's'
                disp(['You currently have ', num2str(chips), ' chips.']);
                pause(2);
                clc;

            case 'g1'
                clc;
                disp('Entering Slot Machine...');
                chips = slot_machine_main(chips);
                pause(2); clc;

            case 'g2'
                clc;
                disp('Entering Roulette...');
                chips = roulette_main(chips);
                pause(2); clc;

            case 'g3'
                clc;
                disp('Entering Shoot Dragon Gate...');
                chips = shoot_d_g(chips);
                pause(2); clc;

            case 'q'
                disp('Goodbye!');
                break;

            case 'g4'
                clc;
                fprintf('\x1b[31mEntering Chinese Roulette...\x1b[0m\n');
                chips = chinese_roulette_main(chips); 
                pause(2); clc;

            case 'r'
                disp('--- Player Rankings ---');
                if ~isempty(data)
                    sorted_data = sortrows(data, 'Chips', 'descend');
                    for i = 1:height(sorted_data)
                        fprintf('%2d. %-15s Chips: %5d   Status: %s\n', ...
                            i, sorted_data.Name{i}, sorted_data.Chips(i), sorted_data.Status{i});
                        pause(2)
                    end
                else
                    disp('No player records found.');
                end
                pause(2); clc;
       end
       if chips <= 0
            disp('You have run out of chips. Account will be deleted.');
            % Delete user from table
            idx = strcmp(data.Name, user_name);
            data(idx, :) = [];  % Remove the row
            pause(2);
            break;
        end
    end

    % ===== Save Result to CSV =====
    status = "Live";
    if chips <= 0
        chips = 0;
        status = "Dead";
    end
    idx = strcmp(data.Name, user_name);
    if any(idx)
        data.Chips(idx) = chips;
        data.Status(idx) = {status};
    else
        newRow = table({user_name}, chips, {status}, 'VariableNames', {'Name', 'Chips', 'Status'});
        data = [data; newRow];
    end

    data = sortrows(data, 'Chips', 'descend');
    writetable(data, filename);
%=========with the saving chips, rank it ============================
    rank = find(strcmp(data.Name, user_name));
    disp(['You finished with ', num2str(chips), ' chips.']);
    disp(['Your current rank is: ', num2str(rank), '/', num2str(height(data))]);
    disp(['Status: ', status]);
end
