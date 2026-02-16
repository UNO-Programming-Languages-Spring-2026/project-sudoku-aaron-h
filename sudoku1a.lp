% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

#const n=4.

{sudoku(X,Y,Z) : Z = 1..n} = 1 :- X = 1..n, Y = 1..n.
% achieved: Every cell is assigned a number one through n.

:- sudoku(X,Y1,Z), sudoku(X,Y2,Z), Y1 < Y2.
% achieved: one number cannot appear twice in the same column.

:- sudoku(X1,Y,Z), sudoku(X2,Y,Z), X1 < X2.
% achieved: one number cannot appear twice in the same row.

#show sudoku/3.
