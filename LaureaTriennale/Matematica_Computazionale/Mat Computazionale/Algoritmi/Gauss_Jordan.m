function x = Gauss_Jordan(A,b)
%funziona come Gauss ma invece di rendere A una matrice diagonale la trasforma nella matrice identità
n=size(A,1);
A=[A,b];
x=zeros(n,1);
for k=1:n
    if A(k,k)~=0
        for i=1:n
            if i~=k
            A(i,k:n+1)=A(i,k:n+1)-A(i,k)/A(k,k)*A(k,k:n+1); %rende 0 tutti i termini sopra e sotto la diagonale
            end
            A(i,i)=A(i,i)*1/A(k,k); %rende 1 gli elementi della diagonale
            %A(i,:)=A(i,:)-A(i,k)/A(k,k)*A(k,:);%agisce su tutta la matrice ad ogni iterazione
        end
    elseif k~=n
        A([k,k+1],:)=A([k+1,k],:); %scambia le righe se A(k,k)==0 nel passo corrente
    else 
        x=[];
    end
end
if length(x)>0
    x=A(:,n+1);
    A=A(:,1:n);
end   
end

