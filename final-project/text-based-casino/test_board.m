function board=test_board()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Description 
% This program initialize the board for roulette, a rectangular matrix of
% numbers from 1 to 36
%
% Function Call
% board=test_board()
%
% 
% Output Arguments
% board is the board for roulette
%
% Assignment Information
%   Assignment:     Final project
%   Author:         Adam Fan
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Inner row and column
row1=1:1:10;
row2=28:-1:19;
col1=36:-1:28;
col2=10:1:19;

%outer row and column
row_one=37:1:48;
row_two=70:-1:59;
col_one=80:-1:70;
col_two=48:1:59;

%board initialization
board = zeros(12, 12);
board(2,2:11)=row1;
board(2:11,11)=col2;
board(11,2:11)=row2;
board(3:11,2)=col1;
board(1,1:12)=row_one;
board(:,12)=col_two;
board(12,:)=row_two;
board(2:12,1)=col_one
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