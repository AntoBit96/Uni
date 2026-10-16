%è il main program di Hotelling
toll=10^-5;
itmax=100;
A=[10,10,10,9;10,10,9,8;10,9,8,7;9,8,7,6];
[D0,sing]=Eliminazione(A);
[B,it,iflag]=Hotelling(A,D0,toll,itmax);
if iflag==0
    disp('Il metodo non converge in itmax iterazioni')
elseif iflag==-1
    disp('Il metodo peggiora il risultato mano a mano che it aumenta')
end
disp('Ultima approssimazione trovata')
B
disp('Numero di iterazioni')
it