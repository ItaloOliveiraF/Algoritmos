clear;
clc;

// Implementação resolução pelo método LU
function [L, U] = LU(A) 
    [l,c]=size(A)
    L = eye(l,c);
    
    for i = 1:l-1 
        pivo = A(i,i);
        for j = i+1:l
        m = A(j,i)/pivo
        L(j,i) = m; 
        A(j,:) = A(j,:) - m*A(i,:);
        end
    end
    U = A;
endfunction

//Declarando as variáveis que serão utilizadas 
A = [1 5 1;7 2 1;8 6 1];

//Exemplo chamada
[L, U] = LU(A);
