function [win] = verticalWin(board, row, col, playerNum)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
connected = 1;
upRow= row-1;
downRow = row+1;
win = false;
while(upRow >= 1 && board(upRow, col) == playerNum)
    connected = connected + 1;
    upRow = upRow - 1;
end
while(downRow <= 6 && board(downRow, col) == playerNum)
    connected = connected + 1;
    downRow = downRow + 1;
end
if(connected >= 4)
    win = true;
end
end

