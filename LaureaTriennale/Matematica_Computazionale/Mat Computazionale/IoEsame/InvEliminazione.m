function [B,det]= InvEliminazione( A ) 

[n,n]=size(A);

A=[A,eye(n)];

det=1;

for i=1:n
    if A(i,i)==0
        [p,j]=max(A(i:n,i));
        tmp=A(i,1:2*n);
        A(j,1:2*n)=A(i,1:2*n);
        A(j,1:2*n)=tmp;
        det=-det;
        if p==0
            det=0;
            error('matrice singolare')
        end
    end
    det=A(i,i)*det;
    A(i,1:2*n)=1/A(i,i)*A(i,1:2*n);
    
    for k=[1:i-1,i+1:n]
        A(k,1:2*n)=A(k,1:2*n)-A(k,i)*A(i,1:2*n);
    end%for k
end
    
    B=A(1:n,n+1:2*n);    
    