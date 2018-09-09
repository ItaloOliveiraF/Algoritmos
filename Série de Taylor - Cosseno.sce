clear;
clc;

//Implementação do Polinômio de Taylor para aproximar uma função f(x)=cos(x)
function [y]=taylorCos(x0,x,nTermos)
    
    y=cos(x0);
    
    for i=2:nTermos
        if modulo(i,4)==2 then
            df=-sin(x0);
        elseif modulo(i,4)==3 then
            df=-cos(x0);
        elseif modulo(i,4)==0 then
            df=sin(x0);
        else
            df=cos(x0);
        end
        
        y = y + (df*(x-x0)^(i-1)/factorial(i-1));
    end
endfunction

//Exemplo de chamada
ang=taylorCos(1, %pi/3, 15)
disp(ang, "ang=")
