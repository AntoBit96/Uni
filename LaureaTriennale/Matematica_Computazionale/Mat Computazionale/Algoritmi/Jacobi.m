function [xnew,flag,it] = Jacobi(A,b,xold,toll,itmax)
n=size(A,1);
err=toll+1;
it=0;
flag=1;
while err>toll && it<itmax
    for j=1:n
        xnew(j)=(b(j)-A(j,1:j-1)*xold(1:j-1)-A(j,j+1:n)*xold(j+1:n))/A(j,j);
    end %for
    err=norm(xnew'-xold)/norm(xold);
    xold=xnew';
    it=it+1;
end %while
if err>toll %sono uscita dal while perchè ho superato itmax
    flag=0; %non converge 
end %if
end

