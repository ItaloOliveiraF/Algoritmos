clear;
clc;

// Implementação método de Gauss
function [x,Aa] = gauss(A, b)
    [l,c]= size(A);
    Aa = [A b];
    
    for i=1:l-1
        pivo = Aa(i,i);
        for j = i+1:l
            m = Aa(j,i)/pivo;
            Aa(j,:) = Aa(j,:) - m*Aa(i,:);
        end
    end
   x = resRet(Aa(:,1:c),Aa(:,c+1)); // utilizando a função de resolução retroativa 
endfunction

//Declarando as variáveis que serão utilizadas
A = [8 -4 -2;-4 10 -2;-2 -2 10];
b = [10 0 4]';

//Exemplo chamada 
[x,Aa]= gauss(A,b);

