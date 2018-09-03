clear;
clc;

// Definição da função f(x)
function y = f(x)
    y = log(x) - 1 
endfunction

// Implementação Bisseção
function [it, x, Er] = bissecao(a, b, p, itMax)
    it = 0;
    x = a;
    Er = 1
    while (Er > 10^(-p) & it < itMax)
        it = it + 1;
        xOld = x;
        x = (a + b)/2;
        if (f(x)*f(a)) < 0
            b = x;
        else
            a = x;
        end
        Er = abs((x - xOld)/x); 
    end  
endfunction

// Exemplo de chamada
[it, x, Er] = bissecao(2, 3, 4, 20)
