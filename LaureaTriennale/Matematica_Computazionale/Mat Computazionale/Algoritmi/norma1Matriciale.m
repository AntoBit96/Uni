%calcola la norma 1 matriciale
A=input('Inserisci matrice quadrata');
[n,n]=size(A);
for k=1:n
    somma=sum(abs(A(:,k)));
    v(k)=somma;
end
norma1=max(v)