function x = Gauss_s_sistemi(A,s,b)
%risolve s sistemi del tipo Ax=bi dove i bi sono s vettori colonna diversi
while s>1
    c=input('Inserisci un altro vettore dei termini noti');
    b=[b,c];
    s=s-1;
end
n=size(A,1);
A=[A,b];
x=zeros(n,1);
for k=1:n-1
    if A(k,k)~=0
        for i=k+1:n
            A(i,k+1:n)=A(i,k+1:n)-A(i,k)/A(k,k)*A(k,k+1:n);
            %A(i,:)=A(i,:)-A(i,k)/A(k,k)*A(k,:);%agisce su tutta la matrice ad ogni iterazione
        end
    else
        x=[];
        return
    end
end
if length(x)~=0
    b=A(:,n+1:n+s);
    A=A(:,1:n);
    x=sostind1(A,b);
end
end

