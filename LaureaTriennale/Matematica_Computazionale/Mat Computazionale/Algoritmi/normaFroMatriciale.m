%calcola la norma di Frobenius matriciale 
A=input('Inserisci matrice quadrata');
[n,n]=size(A);
somma=0;
for i=1:n
    for k=1:n
        somma=somma+abs(A(i,k))^2;
    end
end
normaFro=sqrt(somma)