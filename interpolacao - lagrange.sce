clear;
clc;

//Implementação Lagrange
function [S]=interpolLagrange(x0,xi,yi)
    nPontos=length(xi)
    S=0
    //somatorio
    for i=1:nPontos
        produto=1
        //produtório
        for j=1:nPontos
           if i~=j then
                produto=produto*(x0-xi(j))/(xi(i)-xi(j))
           end
        end
        S=S+produto*yi(i)
    end
endfunction

//Declaração de Variáveis
x=[2 5 10]
y=[3 10 6]

//Exemplo de chamada
[S]=interpolLagrange(10,x,y)
