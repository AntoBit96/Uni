%applica ad una matrice A data l'operazione elementare di prodotto di una riga i per uno scalare c
function A = ProdPerScalare(A,i,c)

A(i,:)=c*A(i,:);

end

