function [ L,U,Perm ] = Doolittle(A)
n=size(A,1);
L=eye(n);
Perm=eye(n);
for k=1:n
    if A(k,k)==0
        [piv,pos]=max(A(k:n,k));
        if piv==0
            return
        end
        A(k,:)=tmp;
        A(k,:)=A(pos,:);
        A(pos,:)=A(k,:);
        Perm(k,:)=tmp;
        Perm(k,:)=Perm(pos,:);
        Perm(pos,:)=Perm(k,:);
        
    end
    for i=k+1:n
        mik=A(i,k)/A(k,k);
        L(i,k)=mik;
        A(i,:)=A(i,:)-mik*A(k,:);
    end
end
U=A;
