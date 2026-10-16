function [X,det]= Risoluzionesistemi( A , B) 
% Funzione che risolve più sistemi con la stessa matrice dei coefficenti contemporaneamente
[n,n]=size(A);
[m,h]= size(B);
if m~=n
    error('dimensioni incompatibili')
end
A=[A,B];

det=1;

for i=1:n
    if A(i,i)==0
        [p,j]=max(A(i:n,i));
        A(i,1:m+n)=ans;
        A(j,1:m+n)=A(i,1:m+n);
        ans=A(j,1:m+n);
        det=-det;
        if p==0
            det=0;
            error('matrice dei coefficenti  singolare')
        end
    end
    det=A(i,i)*det;
    A(i,1:m+n)=1/A(i,i)*A(i,1:m+n);
    
    for k=[1:i-1,i+1:n]
        A(k,1:m+n)=A(k,1:m+n)-A(k,i)*A(i,1:m+n);
    end%for k
end
    
    X=A(1:n,n+1:m+n);    
   