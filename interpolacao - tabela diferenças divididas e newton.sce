clear;
clc;

//Implementação Tabela de Diferenças Divididas
function [coef]=tabDif(x,y)
    n=length(x);
    T=zeros(n,n);
    
    T(:,1)=y;
    
    for j=2:n
        for i=1:n-j+1
            T(i,j)=(T(i+1,j-1)-T(i,j-1))/(x(i+j-1)-x(i));
        end
    end
    
    coef=T(1,:);
endfunction

//Implementação Newton
function S=interpolNewton(x0,xi,yi)
    coef=tabDif(xi,yi);
    n=length(xi);
    
    S=coef(1);
    for i=2:n
        prod=1;
        
        for(j=1:i-1)
            prod=prod*(x0-xi(j));
        end
        
        S=S+coef(i)*prod; 
    end
endfunction

//Declaração de Variáveis
xi=[1 5 12 36]
yi=[2 16 48 100]
x0=36

//Exepmplo de chamda
S=interpolNewton(x0,xi,yi)
