function A = MatPentadiagonale(a)
%a=matDiagonale diag(a)=[a1,a1,...,a1]; questo metodo costrisce la matrice pentadiagonale le cui 2
%diagonali sopra e sotto quella principale sono formati da -1 n=size(a,1)>=4 
n=size(a,1);
D=eye(n)-ones(n)+a;
A=D-(tril(D,-3)+triu(D,3));
end

