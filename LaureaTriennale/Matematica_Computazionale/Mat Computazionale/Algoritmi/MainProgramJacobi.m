A=[4,1,2;1,3,1;1,2,5];%input('Inserisci la matrice del sistema');
b=[16;10;12];%input('Inserisci il vettore colonna dei termini noti');
toll=10^-5;
itmax=100;
xold=b;
[z,flag,it]=Jacobi(A,b,xold,toll,itmax);
if flag==0
    fprintf('\n non converge');
    z
else
    fprintf('\n verifichiamo la soluzione');
    A*z'-b
    z
end