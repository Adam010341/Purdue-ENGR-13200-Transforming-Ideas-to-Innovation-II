function result=number_rand_main(stake)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Description 
% This program displays the animation of a slot machine and determine if
% the user  has won or not
%
% Function Call
% result=number_rand_main(stake)
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

x=randi([1,9]);
if(x>=2 & x<=8)
    y=randi([x-1,x+1]);
elseif(x==1)
    y=randi([1,x+2]);
elseif(x==9)
    y=randi([x-2,9]);
end
if(y>=2 & y<=8)
    z=randi([y-1,y+1]);
elseif(y==1)
    z=randi([1,y+2]);
elseif(y==9)
    z=randi([y-2,9]);
end

for k=1:3
    for j=1:9   
        number_rand(j)
        number_rand(j)
        number_rand(j)
        %if(k==3)
         %   pause(0.20)
        %else
        pause(0.2+(0.01)*(k-1)^(k-1))
        clc
    end
end

for n=1:x
    number_rand(n)
    number_rand(n)
    number_rand(n)
    pause(0.38+0.01*n)
    clc
end

for k=1:3
    for j=1:9   
        number_rand(x)
        number_rand(j)
        number_rand(j)
        pause(0.2+(0.01)*(k-1)^(k-1))
        clc
    end
end

for n=1:y
    number_rand(x)
    number_rand(n)
    number_rand(n)
    pause(0.38+0.01*n)
    clc
end

for k=1:3
    for j=1:9   
        number_rand(x)
        number_rand(y)
        number_rand(j)
        pause(0.2+(0.01)*(k-1)^(k-1))
        clc
    end
end

for n=1:z
    number_rand(x)
    number_rand(y)
    number_rand(n)
    pause(0.45+0.01*n)
    if n~=z
    clc
    end
end

if(x==y & x==z & x==7)
    fprintf("777, Jackpot! 1000%% reward!")
    result=stake*10;
elseif (x==y & x==z)
    fprintf("%i-%i-%i, Jackpot! 800%% reward!",x,y,z)
    result=stake*8;
elseif (x+1==y & x+2==z)
    fprintf("%i-%i-%i, Jackpot! 500%% reward",x,y,z)
    result=stake*5;
elseif (z+1==y & z+2==x)
    fprintf("%i-%i-%i, Jackpot! 500%% reward",x,y,z)
    result=stake*5;
else
    result=stake*0.3;
    fprintf(2,"%i-%i-%i, No reward, return 30%% of stake %i\n",x,y,z,result)
end