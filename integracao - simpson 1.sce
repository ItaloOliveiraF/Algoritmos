clear;
clc;

// Definição da função f(x)
function y = f(x)
    y = log(x) - 1    
endfunction

// Implementação Simpson 1/3
function [I] = Simpson13(a, b, n)
    h = (b-a)/n;
    x = a:h:b;
    y = f(x);
    I = y(1);
    for i=2:n
        if(modulo(i,2)==0)
            I = I + 4*y(i);
        else
            I = I + 2*y(i);
        end
    end  
    I = (h/3)*(I+y(n+1));
endfunction

// Exemplo de chamada
I = Simpson13(1, 3, 10)
