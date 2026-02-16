% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

{sudoku(X,Y,Z) : Z = 1..n} =1 :- X = 1..n, Y = 1..n.
% achieved: Every cell is assigned a number one through n.



#show sudoku/3.
