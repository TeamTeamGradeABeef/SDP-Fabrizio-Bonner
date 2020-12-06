function [stale] = stalemate(board)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
total = 42;
currentCount = 0;
stale = false;

for row=1:1:6
   for col=1:1:7
       if(board(row, col) ~= 1)
           currentCount = currentCount + 1;
       end
   end   
end

if(currentCount == total)
   stale = true;
end

end

