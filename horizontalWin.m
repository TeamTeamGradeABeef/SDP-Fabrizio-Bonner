function [win] = horizontalWin(board, row, col, playerNum)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
connected = 1;
leftCol = col-1;
rightCol = col+1;
win = false;
while(leftCol >= 1 && board(row, leftCol) == playerNum)
    connected = connected + 1;
    leftCol = leftCol - 1;
end
while(rightCol <= 7 && board(row, rightCol) == playerNum)
    connected = connected + 1;
    rightCol = rightCol + 1;
end
if(connected >= 4)
    win = true;
end
end

