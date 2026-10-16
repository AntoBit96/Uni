%costrisce una metrice simmetrica attraverso le funzioni triu(A) e diag(A)
%data una matrice quadrata A qualsiasi
A=input('dammi una matrice quadrata');
B=triu(A); %triangolare superiore di A
T=B-diag(diag(B)); %matrice triangolare estrema superiore,ha la diagonale e gli elementi sotto di essa nulli
TT=T'; %trasposta di T
A=B+TT %matrice simmetrica cercata