%applica ad una matrice A data l'operazione elementare di combinazione lineare di 2 righe i,j con uno scalare c
function A = CombLineare(A,i,j,c)

A(i,:)=A(i,:)+c*A(j,:);

end

