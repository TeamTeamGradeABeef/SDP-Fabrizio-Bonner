clc
clear


% Initialize scene
myScene = simpleGameEngine('ConnectFour.png',86,101);

% Set up variables to name the various sprites
emptySprite = 1;
redSprite = 2;
blackSprite = 3;

% Display empty board   
boardDisplay = emptySprite * ones(6,7);
drawScene(myScene,boardDisplay)

playerWon = false;
playwrString = '';
winningPlayer = 0;
currentPlayer = 2;
while(~playerWon)
    if(currentPlayer == 2)
        playerString = 'Red';
    else
        playerString = 'Black';
    end
    
    prompt = strcat(playerString, ', select a column (1-7): ');
    selectedCol = input(prompt);
    while(selectedCol <= 0 || selectedCol >= 8)
        selectedCol = input('Invalid input, select a column (1-7): ');
    end
    [selectedCol, row, boardDisplay] = dropChip(boardDisplay, selectedCol, currentPlayer);
    drawScene(myScene, boardDisplay)
    
    %check if player won
    if(horizontalWin(boardDisplay, row, selectedCol, currentPlayer))
        playerWon = true;
    elseif (verticalWin(boardDisplay, row, selectedCol, currentPlayer))
        playerWon = true;
    elseif (diagonalWin(boardDisplay, row, selectedCol, currentPlayer))
        playerWon = true;
    elseif (stalemate(boardDisplay))
        playerWon = true;
        playerString = 'Board Full! Nobody';
    end
    
    
    if(currentPlayer == 2)
        currentPlayer = 3;
    else
        currentPlayer = 2;
    end
end


fprintf('%s won!\n', playerString);