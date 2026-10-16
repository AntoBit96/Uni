function [A,L,U,x,y] =Thomas(a,b,c,d)
%a è la diagonale principale di A b quella bassa e c quella alta A è la
%matrice tridiagonale del sistema A*x=d A=L*U dove L è una bidiagonale con
%1 sulla diag princ. e beta(i) su quella inferiore; U è una bidiagonale
%con alpha(i) sulla diag princ. e c(i) su quella superiore y è il vettore
%termini noti del sistema associato U*x=y ed è soluzione del sistema L*y=d
A=diag(a)+diag(b,-1)+diag(c,1);
n=size(A,1);
alpha(1)=a(1);
y(1)=d(1);
for k=2:n
    beta(k)=d(k)/alpha(k-1);
    alpha(k)=a(k)-beta(k)*c(k-1);
    y(k)=d(k)-beta(k)*y(k-1);
end %for k
x(n)=y(n)/alpha(n);
for i=n-1:-1:1
    x(i)=(y(i)-c(i)*x(i+1))/alpha(i);
end %for i
L=diag(ones(1,n))+diag(beta(2:n),-1);
U=diag(alpha)+diag(c,1);
end

