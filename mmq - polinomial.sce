clear;
clc;

// Implementação de uma função que aproxima um conjunto de pontos num MMQ Polinomial de grau k

function [A] = mmqPol(X,Y,k)
    n = length(X);
    for i=1:n
        for j=1:k+1
            V(i,j) = X(i)^(j-1);
        end
    end
    A = inv(V'*V)*(V'*Y);
endfunction

// Exemplo de chamada
X = [0 1 2 3 4 5]';
Y = [2.1 7.7 13.6 27.2 40.9 61.1]';

[A] = mmqPol(X,Y,2);
