clear;
clc;

// Implementação resolução retroativa 
function x = resRet(A,b)
    [l,c]= size(A)
    
    for i = l:-1:1 
        soma = 0;
        for j = i+1:c
            soma = soma + A(i,j)*x(j);
        end
        x(i) = (b(i) - soma)/A(i,i)
    end
endfunction

//Declarando as variáveis que serão utilizadas
A = [15 5 -5;0 10 1;0 0 3];
b = [30 23 -10]';

// Exemplo de chamada
x = resRet(A,b); 
