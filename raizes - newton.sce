clear;
clc;

// Definição da função f(x)
function y = f(x)
    y = log(x) - 1    
endfunction

// Derivada de (f)
function y = df(x)
    y = 1 ./x   
endfunction

// Implementação Newton
function [it, x, Er] = newton(x0, p, itMax)
    it = 0;
    x = x0;
    Er = 1
    while (Er > 10^(-p) & it < itMax)
      it = it+1;
      xOld = x;
      x = x - f(x)/df(x);
      Er = abs((x - xOld)/x); 
    end  
endfunction

// Exemplo de chamada
[it, x, Er] = newton(1, 4, 20)
