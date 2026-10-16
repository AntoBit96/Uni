%calcola la norma 2 matriciale
A=input('Inserisci matrice quadrata');
norma2=sqrt(max(abs(eig(A'*A))))
