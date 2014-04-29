This project is to practise TDD using Rspec and Cucumber together, to utilise both the inward-out and outside-in methods of testing respectively. 

I am just creating a simple game to run in the shell. The purpose is to practise testing, not to make anything pretty!



The Rules:
The game of Mastermind involves two players: the code-maker and the code-breaker. The job of the code-breaker is to deduce a secret code made up of four colored pegs chosen by the code-maker. The pegs come in six different colors: B=Black, C=Cyan, G=Green, R=Red, Y=Yellow, W=White.
The game is usually played on a board with a limited number of 4 hole high columns. The code-maker chooses a secret code and places pegs in the row on the left, which gets covered from view of the code-breaker. The code-breaker gets some number of chances (typically ten) to break the code. In each turn, the code-breaker takes a guess at the code, placing 4 of the colored pegs in a row. The code- maker then marks the guess using smaller black and white marker pegs.
A black marker indicates that one of the colored pegs in the guess is the right color and in the right position, but does not reveal which one. A white marker indicates that one of the pegs in the guess is of a color which is in the solution (again without revealing which one), but is in the wrong position. For example, if the score is 2 black pegs and 1 white, then we know that the guess has three colored pegs that are part of the code and two of them are actually in the right positions.
The code-breaker must crack the secret code before the number of turns(columns) is used up.