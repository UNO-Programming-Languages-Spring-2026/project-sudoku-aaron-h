% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

#const n = 2. % subgrid size, n*n is board size.

{sudoku(X,Y,N) : N = 1..n*n} = 1 :- X = 1..n*n, Y = 1..n*n.
% achieved: Every cell is assigned a number one through n*n.

subgrid(X,Y,G) :- X = 1..n, Y = 1..n, G = .
% achieved: Every cell is assigned to a subgrid.

:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 < Y2.
% achieved: one number cannot appear twice in the same row.

:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 < X2.
% achieved: one number cannot appear twice in the same column.

:- initial(X,Y,N), not sudoku(X,Y,N).
% achieved: solutions cannot appear where intials values are.

#show subgrid/3.