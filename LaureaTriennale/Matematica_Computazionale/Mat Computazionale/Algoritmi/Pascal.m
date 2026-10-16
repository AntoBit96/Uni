function A = Pascal(n)
A=zeros(n,n);
A(1,:)=ones(n,1);
A(:,1)=ones(1,n);
for i=2:n
    for j=i:n
        A(i,j)=A(i-1,j)+A(i,j-1);
        A(j,i)=A(i,j);
    end
end
end

