function [xnew,flag,it] = Gauss_Seidel(A,b,xold,toll,itmax)
n=size(A,1);
err=toll+1;
it=0;
flag=1;
xnew=[];
while err>1 && it<itmax
    for j=1:n
        xnew(j)=(b(j)-A(j,1:j-1)*xnew(1:j-1)'-A(j,j+1:n)*xold(j+1:n)')/A(j,j);
    end %for
    err=norm(xnew-xold)/norm(xold);
    xold=xnew;
    it=it+1;
end %while
if err>toll %sono uscita dal while perchè ho superato itmax
    flag=0; %non converge 
end %if


end

