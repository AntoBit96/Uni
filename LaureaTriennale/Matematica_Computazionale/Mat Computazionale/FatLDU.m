function [L,D,U,flag,Perm] = FatLDU( A )
% L,D,U decomposizione
% flag=1 ok,flag=0 singolare
% Perm matrice scambio di righe
n=size(A,1);
Perm=eye(n);
L=eye(n);
D=eye(n);
U=eye(n);
flag=1;
for i=1:n
    if A(i,i)==0
        A=[A,Perm];
        [p,j]=max(A(i:n,i));
        A(i,1:m+n)=tmp;
        A(j,1:m+n)=A(i,1:m+n);
        tmp=A(j,1:m+n);
        Perm=A(1:n,n+1:2*n);
        A=A(1:n,1:n);
        if p==0
            flag=0;
            return
        end
    end
    
    for k=i+1:n
        L(k,i)=A(k,i)/A(i,i);
        A(k,1:n)=A(k,1:n)-A(k,i)/A(i,i)*A(i,1:n);
        
    end%for k
end%for i
U=A;
for j=1:n
    D(j,j)=A(j,j);
    U(j,:)=U(j,:)/A(j,j);
end

