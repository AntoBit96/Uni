function [ x ] = Sostituzioneavanti( A,b )
n=size(A,1);
x=[b(1)/A(1,1),zeros(1,n-1)];
for i=2:n
    x(i)=b(i)-A(i,1:i-1)*x(1:i-1)'/A(i,i);
    
end

