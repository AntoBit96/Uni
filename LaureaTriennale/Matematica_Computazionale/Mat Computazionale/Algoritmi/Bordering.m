function B = Bordering (A)
n=size(A,1);
sing=1;
if A(1,1)==0
   [mas,pos]=max(abs(A(:,1)));
   if mas~=0
      A=ScambioRighe(A,1,pos);
      sing=0;
   else
       error('Non si può usare questo algoritmo')
   end    
end
B=1/A(1,1); %prima inversa matrice 1x1 primo passo
for i=2:n
    u=A(1:i-1,i);
    v=A(i,1:i-1);
    beta=B*u;
    alpha=v*B;
    bi=A(i,i)-v*beta;
    B(1:i-1,i)=-beta/bi; %sarebbe ri
    B(i,1:i-1)=-alpha/bi; %qi
    B(1:i-1,1:i-1)=B(1:i-1,1:i-1)-beta*B(i,1:i-1); %P(i-1)
    B(i,i)=1/bi;
end
if sing==0  
   %B=fliplr(B);
   B=ScambioRighe(B,pos,1);
end   
end