% Anonymous Functions are a one line definition of a function
% useful when it's not needed an entire file to store a function
% but it is possible to stick it to one line

clc
clear all
close all

F = @(dim, val) val*ones(dim, dim);

A = F(4, 2);

F = @(x) sin(x);

% Passing a function handle in input to another function

F = @(x) sin(2*x) + 0.2;

% Calculating the zero of a function defined anonimously

x0 = fzero(F, 0);

% Calculating the integral of a function betweet two points

integral(F, 0, 1);

% Matrices

M = [3, 4, 1, 0;
    1, 2, 1, 7;
    8, 0, 0, 1];

a = M(2, 4);

z = linspace(0, 1, 11);

b = z(4);

% Elements in the matrix are numbered column wise

% column 4 row 2
c = M(11);

% Extracting more elements
% The counting of array is 

x = [3, 5, 4, 1, 8, 7, 6];
y = [x(2), x(4), x(1), x(6)];
y1 = x([2, 4, 1, 6]);

% By creating an array of indexes

p = [2 4 1 6];

y2 = x(p);

v = M(2,1:4);

% Extracting all of the elements

v2 = M(2,:);

v3 = M(3, [1 4 2]);

% Elements M(1,2), M(1,3), M(3,2), M(3,3)

v4 = M([1,3], [2,3]);

M([1, 3], [2, 3]) = [5 2; 1 1];

% Deleting a row of an array

M(3, :) = zeros(1, 4);

% Reducing a matrix

M(3, :) = [];

% Try to tell what this command does

M(2: end, [1 end]);

% exercise 1

clear all
clc
close all

% Given an array x = [9 3 1 2 8 7] create y = [7 8 2 1 3 9].
% Obteined from the same elements of X but in reversed order.

x = [9 3 1 2 8 7];

y = x([6,5,4,3,2,1]);
% OPPURE
y1 = x(end:-1:1);

% Given a matrix M, compute N, as below

M = [ 1, 5, 2, 3; 
       2, 2, 5, 7; 
        6, 9, 0, 4 ];

N = [M(), M(), M(), M()];

% Alternativa:

N1 = M(end:-1:1, end:-1:1);

% Given x, extract the elements in the even positions

x = linspace(0, 1, 976);

% Pari:
y2 = x(2:2:end);
% Dispari:
y3 = x(1:2:end);

% Create a matrix N1 from M except for the elements (1,2) (1,4) (3,2) (3,4)

N = M;
N([1 3],[2 4]) = M([1 3], [2 4]);


