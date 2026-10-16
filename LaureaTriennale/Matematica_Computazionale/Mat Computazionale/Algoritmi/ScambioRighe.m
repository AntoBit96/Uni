%applica ad una matrice A data l'operazione elementare scambio delle righe i e j
function A = ScambioRighe (A,i,j) 
A([i,j],:)=A([j,i],:);
end

