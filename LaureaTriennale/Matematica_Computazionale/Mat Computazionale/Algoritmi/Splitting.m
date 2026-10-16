function [xnew,flag,it,rho,R] = Splitting(N,P,b,xold,toll,itmax)
%Metodo iterativo che permette di risolvere Jacobi, Gauss-Seidel e altri in
%un unico passaggio
        %flag=1 metodo converge 
flag=1; %flag=0 metodo non converge
        %flag=1 metodo non converge in itmax iterazioni
Ninv=inv(N);
M=Ninv*P;
c=Ninv*b;
xnew=xold;
it=0;
rho=max(abs(eig(M)));
R=-log10(rho);
if rho>1
    flag=0;
else
    err=toll+1;
    while it<itmax && err>toll
          xnew=M*xold+c;
          err=norm(xnew-xold);
          xold=xnew;
          it=it+1;
    end %while
    if err>toll
        flag=-1;
    end %if
end %if
end

