function [M,N] =Ese10_04_17(k,x,y)
%M è la matrice elementare t.c. M*x=(x1,...,xk,0,...,0)' dove x è un
%vettore colonna di n elementi t.c. ek'*x=xk!=0
%k è la riga
%N=M*y dove y è un vettore colonna con n elementi
n=size(x,1);
M=eye(n);
for i=k+1:n
    M(i,k)=-x(i)/x(k);
end     
N=M*y;
end