function A = matriceElementare1(i,c,n)%i riga di riferimento per l'operazione n numero righe c scalare 
I=eye(n);
for k=1:n
    for j=1:n
        if k==j && j==i
            A(k,j)=c;
        else
            A(k,j)=I(k,j);
        end
    end
end
end

