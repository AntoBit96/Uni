function [B,it,iflag] = Hotelling( A,D0,toll,itmax )
% D0 è la prima approssimazione utile che si passa al programma
% toll la tolleranza
% itmax il numero massimo di iterazioni,in quanto il metodo non è a convergenza sicura

n=size(A,1);
E(1)=eye(n)-A*D0;
it=2;
iflag=1;
while norm(E,inf)>toll && it<itmax
    D0=D0*(eye(n)+E);
    E(it)=eye(n)-A*D0;
    if norm(E(it-1),inf)>norm(E(it),inf)
        iflag=-1;
        return
    end
    it=it+1;
end
if it==itmax
   iflag=0;
end
B=D0;
it=it-1;
        
end


