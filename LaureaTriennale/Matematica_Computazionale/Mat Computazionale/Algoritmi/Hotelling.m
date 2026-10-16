function [B,it,iflag] = Hotelling(A,D0,toll,itmax)
%da input prende le matrici A e D0(matrice di partenza del metodo iterativo)e restituisce B matrice inversa
%una sua approssimazione it numero di iterazioni fatte e iflag che indica se il metodo converge o no  
[~,n]=size(A);
E=eye(n)-A*D0; %errore passo 1
it=1;
iflag=1;
e=eye(n);
i=1;
while norm(E,inf)>toll && it<=itmax && norm(E,inf)>=norm(e,inf) && i<=n
    D0=D0*(eye(n)+e);
    for j=1:n
      D0(i,j)=fprintf('D0(i,j)=%4.2f\n',D0(i,j));
    end
    i=i+1;
    e=eye(n)-A*D0;
    it=it+1;
end
if it>=itmax
    iflag=0; %metodo non converde
elseif norm(E,inf)<norm(e,inf)
       iflag=-1; %maggiore è l'it maggiore è l'errore
end
B=D0;
it=it-1;
end