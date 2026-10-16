%calcola la norma infinito matriciale
A=input('Inserisci matrice quadrata');
[n,n]=size(A);
for k=1:n
    somma=sum(abs(A(k,:)));
    v(k)=somma;
end
normaInf=max(v)