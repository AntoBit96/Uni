function [xnew,it,flag] = GaussSeidel(A,b,xold,itmax,toll)
    xnew=xold;
    n=size(A,1);
    it=0;
    flag=1;
    err=toll+1;
    A=[A,b'];
    for j=1:n
        if A(j,j)==0
            [p,k]=max(A(j:n,j));
            tmp=A(j,1:n+1);
            A(k,1:n+1)=A(j,1:n+1);
            A(k,1:n+1)=tmp;
            if p==0
                flag=0;
                return
            end
        end
    end %for j
    b=A(1:n,n+1);
    A=A(1:n,1:n);
    b=b';
    while err>toll && it<itmax
        for i=1:n
            xnew(i)=1/A(i,i)*(b(i)-(A(i,1:i-1)*(xnew(1:i-1)')+A(i,i+1:n)*(xold(i+1:n)')));
        end
        err=norm(xold-xnew);
        xold=xnew;
        it=it+1;
    end
    if err>toll
        flag=0;
    end

end
