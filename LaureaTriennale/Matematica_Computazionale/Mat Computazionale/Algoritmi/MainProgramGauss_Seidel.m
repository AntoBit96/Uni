A=input('Inserisci la matrice del sistema');
b=input('Inserisci il vettore colonna dei termini noti');
toll=10;
itmax=100;
xold=b;
[z,flag,it] = Gauss_Seidel(A,b,xold,toll,itmax);
if flag==0
    fprintf('\n non converge');
    z
else
    fprintf('\n verifichiamo la soluzione');
    A*z'-b
end