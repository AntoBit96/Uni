function [L,D,U] =FatDoolittle(A)
n=size(A,1);
p=ones(n,1);
L=eye(n);
U=eye(n);
for i=1:n-1
    [pivot,k]=max(abs(A(i:n,i)));
    p(i)=pivot;
    if k>1
       tmp=A(i,:);
       A(i,:)=A(i+k-1,:);
       A(i+k-1,:)=tmp;
    end %if
    
    for h=i+1:n
        %if k>i
            L(h,i)=A(h,i)/A(i,i);
        %end %if
        for j=i+1:n
            A(h,j)=A(h,j)-A(h,i)/A(i,i)*A(i,j);
        end %for j
    end %for h
end %for i
U1=triu(A);%triu(A,1) triangolare superiore senza diag
U2=diag(diag(U1));
U=inv(U2)*U1;
D=diag(p);
end