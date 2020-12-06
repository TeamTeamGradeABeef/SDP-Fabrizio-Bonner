function [win] = diagonalWin(board, row, col, playerNum)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
connected = 1;
win = false;
currentRow = row - 1;
currentCol = col + 1;

%Looking at the top rights
while(currentCol <= 7 && currentRow >= 1 && board(currentRow, currentCol) == playerNum)
    connected = connected + 1;
    currentCol = currentCol + 1;
    currentRow = currentRow - 1;
end

currentCol = col - 1;
currentRow = row + 1;

%Looking at bottom left
while(currentCol >= 1 && currentRow <= 6 && board(currentRow, currentCol) == playerNum)
    connected = connected + 1;
    currentCol = currentCol - 1;
    currentRow = currentRow + 1;
end

if(connected >= 4)
    win = true;
else
    connected = 1;
    currentRow = row - 1;
    currentCol = col - 1;
    
    %Looking at the top lefts
    while(currentCol >= 1 && currentRow >= 1 && board(currentRow, currentCol) == playerNum)
        connected = connected + 1;
        currentCol = currentCol - 1;
        currentRow = currentRow - 1;
    end
    
    currentRow = row + 1;
    currentCol = col + 1;
    
    %Looking at bottom right
    while(currentCol <= 7 && currentRow <= 6 && board(currentRow, currentCol) == playerNum)
        connected = connected + 1;
        currentCol = currentCol + 1;
        currentRow = currentRow + 1;
    end
    
    if(connected >= 4)
        win = true;
    end

end

end

