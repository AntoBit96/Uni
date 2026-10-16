function [xnew,it,flag,err] = SplittingSistemiLineari( A,b,N,xold,itmax,toll )
% Inputs:
% A : Matrice del sistema
% b : Termine noto (vettore colonna)
% N : Matrice di splitting
% x0ld : Vettore iniziale (vettore colonna)
% itmax : Numero massimo di iterazioni
% toll : Tolleranza 
%
% Outputs
% xnew : Vettore soluzione
% it : Iterazioni effettuate
% err: errore 
% flag: se flag=1 converge altrimenti flag=0
P=N-A;
%iN=inv(N);
M=N\P;
c=N\b;
xnew=xold;
err=toll+1;
it=0;
flag=1;
while err>toll && it<itmax
    xnew=M*xold+c;
    err=norm(xnew-xold);
    it=it+1;
    xold=xnew;
end
if err>toll
    flag=0;
end
if it>=itmax
    flag=-1;
end
    
    



end

