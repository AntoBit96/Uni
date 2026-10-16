%main program del metodo del gradiente
A=;%[];
b=[];
xold=b;
r0=b-A*xold;
disp('Il vettore soluzione del sistema è ')
x=MetDelGradiente(A,b,xold,r0)
