function lift = shoot_d_g(chips)
played_chips = chips;
time_count = 0;
while time_count < 5 
    card1 = randi(13);
    card2 = randi(13);
    card3 = randi(13);
    if abs(card2 - card1) == 1
        continue;
    elseif abs(card2 - card1) ~= 1
        time_count = time_count + 1;
        fprintf('your present chips is %d \n',played_chips);
        stake = input('enter your stake: ');
        for i = 1 : 25
            r = mod(i, 2);
            if r == 1 
                if(card1 == fix(i / 2) + 1 || card2 == fix(i / 2) + 1 )
                    a = fix(i / 2) + 1;
                    if (a == 11)
                        jak = 'J';
                        fprintf('%c',jak);
                    elseif(a == 12)
                        que = 'Q';
                        fprintf('%c',que);
                    elseif(a == 13)
                        kin = 'K';
                        fprintf('%c',kin);
                    else
                        fprintf('%d',a);
                    end
                else
                    fprintf(' ');
                end
            elseif r == 0
                fprintf(' ');
            end
        end
        
        X = input('\nDo you want to play?(y for yes, n for no): \n','s');
        if X == 'y'
            if card2 == card1
                compa = input('bigger or smaller?(b for bigger, s for smaller): \n','s');
                if compa == 'b'
                    if card3 == 11
                        fprintf('your card is ');
                        pause(2.5);
                        fprintf('J\n');
                    elseif card3 == 12
                        fprintf('your card is ');
                        pause(2.5);
                        fprintf('Q\n');
                    elseif card3 == 13
                        fprintf('your card is ');
                        pause(2.5);
                        fprintf('K\n');
                    else
                    fprintf('your card is');
                    pause(2.5);
                    fprintf('%d\n',card3);
                    end
                    if card3 > card2
                        played_chips = played_chips + stake;
                        pause(1.5);
                        fprintf('you win!!\n');
                        fprintf('chips is : %d\n',played_chips);
                    elseif card3 == card2
                        played_chips = played_chips - 2 * stake;
                        pause(1.5);
                        fprintf('you lose...\n');
                        fprintf('chips is : %d\n',played_chips);
                    elseif card3 < card2
                        played_chips = played_chips - stake;
                        pause(1.5);
                        fprintf('you lose...\n');
                        fprintf('chips is : %d\n',played_chips);
                    end
                elseif compa == 's'
                    if card3 == 11
                        fprintf('your card is ');
                        pause(2.5);
                        fprintf('J\n');
                    elseif card3 == 12
                        fprintf('your card is ');
                        pause(2.5);
                        fprintf('Q\n');
                    elseif card3 == 13
                        fprintf('your card is ');
                        pause(2.5);
                        fprintf('K\n');
                    else
                    fprintf('your card is ');
                    pause(2.5);
                    fprintf('%d\n',card3);
                    end
                    if card3 < card2
                        played_chips = played_chips + stake;
                        pause(1.5);
                        fprintf('you win!!\n');
                        fprintf('chips is : %d\n',played_chips);
                    elseif card3 == card2
                        played_chips = played_chips - 2 * stake;
                        pause(1.5);
                        fprintf('you lose...\n');
                        fprintf('chips is : %d\n',played_chips);
                    elseif card3 > card2
                        played_chips = played_chips - stake;
                        pause(1.5);
                        fprintf('you lose...\n');
                        fprintf('chips is : %d\n',played_chips);
                    end
                end
            elseif (card2 - card1) < 0
                if card3 == 11
                        fprintf('your card is ');
                        pause(2.5);
                        fprintf('J\n');
                    elseif card3 == 12
                        fprintf('your card is ');
                        pause(2.5);
                        fprintf('Q\n');
                    elseif card3 == 13
                        fprintf('your card is ');
                        pause(2.5);
                        fprintf('K\n');
                    else
                    fprintf('your card is ');
                    pause(2.5);
                    fprintf('%d\n',card3);
                 end
                if card3 > card2 && card3 < card1
                   played_chips = played_chips + stake;
                   pause(1.5);
                    fprintf('you win!!\n');
                    fprintf('chips is : %d\n',played_chips);
                elseif card3 < card2 || card3 > card1
                    played_chips = played_chips - stake;
                    pause(1.5);
                    fprintf('you lose...\n');
                    fprintf('chips is : %d\n',played_chips);
                elseif card3 == card2 || card3 == card1
                    played_chips = played_chips - 2 * stake;
                    pause(1.5);
                    fprintf('you lose...\n');
                    fprintf('chips is : %d\n',played_chips);
                end
            elseif (card2 - card1) > 0
                if card3 == 11
                        fprintf('your card is ');
                        pause(2.5);
                        fprintf('J\n');
                    elseif card3 == 12
                        fprintf('your card is ');
                        pause(2.5);
                        fprintf('Q\n');
                    elseif card3 == 13
                        fprintf('your card is ');
                        pause(2.5);
                        fprintf('K\n');
                else
                    fprintf('your card is ');
                    pause(2.5);
                    fprintf('%d\n',card3);
                end
                if card3 < card2 && card3 > card1
                   played_chips = played_chips + stake;
                   pause(1.5);
                        fprintf('you win!!\n');
                        fprintf('chips is : %d\n',played_chips);
                elseif card3 > card2 || card3 < card1
                    played_chips = played_chips - stake;
                    pause(1.5);
                    fprintf('you lose...\n');
                    fprintf('chips is : %d\n',played_chips);
                 elseif card3 == card2 || card3 == card1
                    played_chips = played_chips - 2 * stake;
                    pause(1.5);
                    fprintf('you lose...\n');
                    fprintf('chips is : %d\n',played_chips);
                end
            end
        elseif X == 'n'
            played_chips = played_chips - stake * 0.1;
            fprintf('chips is : %d\n',played_chips);
        end
    end
end

fprintf('\nGame over~~~\n');
if played_chips < chips
    mi = chips - played_chips;
    fprintf('you lose %d dollars\n',mi);
    fprintf('Welcome back to play the game\n');
elseif played_chips > chips
    mi = played_chips - chips;
    fprintf('Congratulation!~~ you win %d dollars!!!\n',mi);
end

fprintf('\nplease take your chips to the next game :)\n');
lift = played_chips;
end

