function [ A ] = EsameCostruzionematrice( a,b,c,d )
n=length(d);
a=a*ones(1,n);
b=b*ones(1,n-1);
c=c*ones(1,n-1);
%primo metodo di costruzione
A=diag(a)+diag(b,-1)+diag(c,1);
%secondo metodo di costruzione
b=[b,0];
c=[0,c];
A=spdiags([b',a',c'],[-1,0,1],n,n);





end

