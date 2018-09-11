clear;
clc;

// Implementação resolução pelo método de Gauss Seidel
function [x, Er]= gseidel(A,b,x0,n)
    [l,c]=size(A)
    
    erro = 1;
    cont = 1;
    x = x0;
    while (cont <= n)
        xa = x
       
        for i = 1:l
            soma=0;
            for j = 1:l
                if(j~=i) then
                soma = soma + A(i,j)*x(j);
                end
            end
            x(i) = (b(i) - soma)/A(i,i);
        end
        Er(cont) = max(abs(x-xa))/max(abs(x))
        cont = cont + 1;
    end
endfunction

//Declarando as variáveis que serão utilizadas
A = [15 5 -5;1 10 1;2 -2 8];
b = [30 23 -10]';
x0 = zeros(1,3);
n = 10;

//Exemplo chamada 
[x, Er]= gseidel(A,b,x0,n);
