clear;
clc;

//Problema exemplo: dada a equação diferencial dy/dx = -1.2y + 7exp(-0.3x)
//com condições iniciais y(0) = 3
//no intervalo de a = 0 à b = 2.5 com um passo h = 0.5

//Definindo a função
function dy = f(x, y)
     dy = -1.2*y + 7*exp(-0.3*x)
endfunction

//Implementação de Heun
function [x,y] = Heun(y0, a, b, h)
    x = a:h:b;
    y(1) = y0;
    n = length(x);
    for i = 1:n-1
        k1 = f(x(i),y(i));
        k2 = f(x(i) + h, y(i) +k1*h);
        k = (k1+k2)/2;
        y(i+1) = y(i) + k*h;
    end
endfunction

//Exemplo de chamada
[x,y] = Heun(3, 0, 2.5, 0.5)

//Plot do gráfico
plot(x,y);

