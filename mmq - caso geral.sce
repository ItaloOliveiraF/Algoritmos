clear;
clc;

//Exemplo da implementação do MMQ para aproximar uma função do tipo f(x) = a0*cos(x) + a1*exp(x) para um conjunto de pontos

//Definição dos pontos
X = [0 1 2 3]';
Y = [3.18 3.9 6.5 17.82]';

//Cálculo da matriz de Vandermonde
V = [cos(X) exp(X)];

//Cálculo dos coeficientes

A = inv(V'*V)*(V'*Y);

//Definição da função aproximada
function [y] = f(x)
    y = A(1).*cos(x) + A(2).*exp(x);
endfunction

// Exemplo de chamada
y = f(5);
