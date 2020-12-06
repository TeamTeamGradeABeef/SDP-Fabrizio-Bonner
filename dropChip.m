function [col, idx, boardDisplay] = dropChip(boardDisplay, col, currentPlayer)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    success = false;
    while(~success)
        idx = 6;
        while(idx >= 1 && boardDisplay(idx, col) ~= 1)
            idx = idx - 1;
        end

        if(idx > 0)
            boardDisplay(idx, col) = currentPlayer;
            success = true;
        else
            col = input('Column is full, select a different column (1-7): ');
            while(col <= 0 || col >= 8)
                col = input('Invalid input, select a column (1-7): ');
            end
        end
    end
end

