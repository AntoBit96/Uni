%costruisce una matrice simmetrica a partire da una matrice triangolare
%superiore che costruiamo invece di averla già
n=input('numero righe di una matrice quadrata');
for i=1:n
    for j=i:n
        A(i,j)=input('dare elemento');
        A(j,i)=A(i,j);
    end
end
A