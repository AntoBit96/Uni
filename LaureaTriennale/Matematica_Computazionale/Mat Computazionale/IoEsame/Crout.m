function [L,U] = Crout(A)
%L matrice triang inf
%U matrice triang sup 1 sulla diagonale
n=size(A,1);
L=zeros(n);
U=eye(n);
L(1:n,1)=A(1:n,1);
for k=2:n
    U(1,k)=A(1,k)/A(1,1);
    for i=k:n
    L(i,k)=A(i,k)-L(i,1:k-1)*U(1:k-1,k);
    if i<n
    U(k,i+1)=1/L(k,k)*(A(k,i+1)-L(k,1:k-1)*U(1:k-1,i+1));
    end
    end
%     Disp(L)
%     Disp(U)
%     Disp(L*U)
end




end

