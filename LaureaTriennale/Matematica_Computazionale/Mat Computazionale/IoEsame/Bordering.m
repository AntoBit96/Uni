function [B] =Bordering( A )
%Calcolo matrice inversa ordine conoscendo inversa di ordine n-1
n=size(A,1);
scambio=0;
if A(1,1)==0
    scambio=1;
    [p,k]=max(abs(A(:,1)));
    if p==0
        B=zeros(n);
        return
    end
    A(1,1:n)=tmp;
    A(1,1:n)= A(k,1:n);
    A(k,1:n)= tmp;
end
B=1/A(1,1);
for i=2:n
    %Ai=A(1:i,1:i);
    u=A(1:i-1,i);
    v=A(i,1:i-1);
    alpha=v*B;
    beta=B*u;
    b=A(i,i)-v*beta;
    r=-beta/b;
    q=-alpha/b;
    P=B+(beta*alpha)/b;
    B=[P,r;q,1/b];
end
if scambio==1
    B(k,1:n)=tmp;
    B(k,1:n)= B(1,1:n);
    B(1,1:n)= tmp;
end
