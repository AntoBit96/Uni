%Laplace calcolato scegliendo la riga o la colonna con più zeri
function d = Det_Laplace_Ottimizzato (A)
[nr,nc]=size(A);
if nr~=nc
    error('La matrice non è quadrata');
elseif nr==1
    d=A(1,1);
else
    [i,dir]=NrMaxZeri(A);  
    if dir=='c'
        A=A';
    end
    d=0;
     for j=1:nc
         if A(i,j)~=0
            d=d+A(i,j)*(-1)^(i+j)*det_Laplace(Submatrix(A,i,j));
         end
    end
end
end

