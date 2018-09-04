clear;
clc;

// Definição da função f(x)
function y = f(x)
    y = log(x) - 1    
endfunction

// Implementação Simpson 3/8
function [I] = Simpson38(a, b, n)
    h = (b-a)/n;
    x = a:h:b;
    y = f(x);
    I = y(1);
    for i=2:n
        if(modulo(i,3)==1)
            I = I + 2*y(i);
        else
            I = I + 3*y(i);
        end
    end  
    I = (3*h/8)*(I+y(n+1));
endfunction

// Exemplo de chamada
I = Simpson38(1, 3, 9)
