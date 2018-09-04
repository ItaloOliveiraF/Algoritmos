clear;
clc;

// Definição da função f(x)
function y = f(x)
    y = log(x) - 1    
endfunction

// Implementação Trapézio
function [I] = Trapezio(a, b, n)
    h = (b-a)/n;
    x = a:h:b;
    y = f(x);
    I = y(1);
    for i=2:n
        I = I + 2*y(i);
    end  
    I = (h/2)*(I+y(n+1));
endfunction

// Exemplo de chamada
I = Trapezio(1, 3, 10)
