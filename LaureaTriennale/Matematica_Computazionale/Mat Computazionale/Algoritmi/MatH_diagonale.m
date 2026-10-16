function [A,xt] = MatH_diagonale(n,alpha,h)
%costruisce la matrice h-diagonale dove alpha è l'elemento sulla diagonale
%principale e il resto sono 1 dove h è il numero di diagonali NON
%principali da riempire
A=diag(alpha*ones(n,1));
for i=1:h
A=A+diag(ones(n-i,1),-i)+diag(ones(n-i,1),i);
end
xt=2*ones(n,1);
end

