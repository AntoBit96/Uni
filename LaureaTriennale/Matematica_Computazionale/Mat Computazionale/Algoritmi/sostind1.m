function x = sostind1(A,b)
n=size(A,1); 
x=zeros(n,1);
for k=n:-1:1
    x(k)=A(k,k)^-1*(b(k)-A(k,k+1:n)*x(k+1:n));
end

end