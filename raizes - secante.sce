clear;
clc;

// Definição da função f(x)
function y = f(x)
    y = log(x) - 1 
endfunction

// Implementação Secante
function [it, x, Er] = secante(x0, x1, p, itMax)
    it = 0;
    Er = 1;
    xOld1 = x0;
    x = x1;
    while (Er > 10^(-p) & it < itMax)
        xOld0 = xOld1;
        xOld1 = x;
        x = xOld1 - (f(xOld1)*(xOld1 - xOld0))/(f(xOld1) - f(xOld0));
        Er = abs((x - xOld1)/x);
        it = it + 1;
    end
endfunction

// Exemplo de chamada
[it, x, Er] = secante(1, 2, 4, 20)

