function xnew = MetDelGradiente (A,b,xold,r0)
%metodo iterativo che opera su una matrice A simmetrica e definita positiva
%xnew è la soluzione del sistema invece xold è la sua prima approssimazione
r=r0;
while r>eps
    xnew=xold;
    r=b-A*xnew;
    alpha=r'*r/(r'*A*r);
    xnew=xold+alpha*r;
end
end

