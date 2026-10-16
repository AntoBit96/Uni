function [xnew,it,flag,err] = Jacobi(A,b,xold,itmax,toll)
%------------------------------------------
% Metodo iterativo di Jacobi per sistemi lineari.
%-----------------------------------------
% Inputs:
% A : Matrice del sistema
% b : Termine noto (vettore riga)
% x0ld : Vettore iniziale (vettore riga)
% itmax : Numero massimo di iterazioni
% toll : Tolleranza 
%
% Outputs
% xnew : Vettore soluzione
% it : Iterazioni effettuate
% err: errore 
% flag: se flag=1 converge altrimenti flag=0

xnew=xold;
n=size(A,1);
it=0;
flag=1;
err=1+toll;
% A=[A,b'];
% for j=1:n
%     if A(j,j)==0
%         [p,k]=max(A(j:n,j));
%         tmp=A(j,1:n+1);
%         A(k,1:n+1)=A(j,1:n+1);
%         A(k,1:n+1)=tmp;
%         if p==0
%             flag=2;
%             return
%         end
%     end
% end %for j
% b=A(1:n,n+1);
% A=A(1:n,1:n);
% b=b';
while err>toll && it<itmax
    for i=1:n
        xnew(i)=1/A(i,i)*(b(i)-A(i,[1:i-1,i+1:n])*(xold([1:i-1,i+1:n])'));
    end
    err=norm(xold-xnew);
    xold=xnew;
    it=it+1;
end
if err>toll
    flag=0;
end

end

