clear;
clc;

//Implementação do Polinômio de Taylor para aproximar uma função f(x)=exp(ax), seja a um valor constante pertencente aos reais
function [y]=taylorExp(x0,x,nTermos,a)
    
    y=exp(a*x0);
    
    for i=2:nTermos
        df=(a^(i-1))*exp(a*x0)
        y = y + (df*(x-x0)^(i-1)/factorial(i-1));
    end
endfunction

//Exemplo de chamada
[y]=taylorExp(1.5, 2, 5, 2)
