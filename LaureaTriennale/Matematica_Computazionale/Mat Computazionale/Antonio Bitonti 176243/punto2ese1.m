function [L,U,x ] = punto2ese1( a,c,d )
%d vettore termine noti
% a,c valori di diagonale principale e diagonale superiore
%Siccome le diagonali sono costanti posso evitare di occupare lo spazio per
%dei vettori
n=length(d);
alpha(1)=a;
y(1)=d(1);
for k=2:n
    beta(k)=d(k)/alpha(k-1);
    alpha(k)=a-beta(k)*c;
    y(k)=d(k)-beta(k)*y(k-1);
end %for k
x(n)=y(n)/alpha(n);
for i=n-1:-1:1
    x(i)=(y(i)-c*x(i+1))/alpha(i);
end %for i
L=eye(n)+diag(beta(2:n),-1);
U=diag(alpha)+diag(c*ones(1,n-1),1);
end




