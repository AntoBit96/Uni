function [L,U] = FatThomas(a,b,c,d)
%Soluzione sistema tridiagonale
%a=diag 0 | b=diag -1 | c=diag 1
%y risultato sistema Ux=y
n=length(a);
alpha=zeros(1,n);
beta=zeros(1,n-1);
% U=zeros(n);
% L=eye(n);
alpha(1)=a(1);
for k=2:n
    beta(k-1) = d(k)/alpha(k-1);
    alpha(k)=a(k)-beta(k-1)*c(k-1);
end
U=diag(alpha)+diag(c,1);
L=eye(n)+diag(beta,-1);  



end

