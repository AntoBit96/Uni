function [L,U] =FatCrout(A)
% L diag inferiore con 1 sulla diag U diag superiore con 1 sulla diag
n=size(A,1);
L(:,1)=A(:,1);
U(1,1)=1;
U(1,2:n)=A(1,2:n)/L(1,1);
for k=2:n
    for i=k:n
        L(i,k)=A(i,k)-L(i,1:k-1)*U(1:k-1,k);
    end %for i    
    for j=k:n
        U(k,j)=L(k,k)^-1*(A(k,j)-L(k,1:k-1)*U(1:k-1,j));
    end %for j
end % for k
end