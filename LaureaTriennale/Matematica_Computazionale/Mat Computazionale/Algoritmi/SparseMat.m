function [Tnew,B] = SparseMat (n)
%costruisce A e B rispettivamente con sparse e full e controlla la locazione di memoria di A e
%B
A0=diag(-ones(n-1,1),-1)+diag(-ones(n-1,1),1)+2*eye(n);
A1=toeplitz([-2,1,zeros(1,n-2)]);
whos A0
whos A1
Tnew=sparse([2:n,1:n,1:n-1],[1:n-1,1:n,2:n],[ones(1,n-1),-2*ones(1,n),ones(1,n-1)],n,n,3*n); %(posso inserire ancora 2 elementi non nulli)
                                                                                             %crea la matrice sparse tutto in unico comando
D=sparse(1:n,1:n,-2*ones(n,1),n,n);
E=sparse(2:n,1:n-1,ones(1,n-1),n,n);
A=E+D+E';
whos A
B=full(A);
whos B
[r,c,s]=find(Tnew) % comando che restituisce 3 vettori con posizione riga,colonna e rispettivi elementi(vettore s)
end

