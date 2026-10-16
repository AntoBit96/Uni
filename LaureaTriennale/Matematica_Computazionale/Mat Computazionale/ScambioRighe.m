function A= ScambioRighe(A,i,j)
ans=A(i,:);
A(i,:)=A(j,:);
A(j,:)=ans;


end

