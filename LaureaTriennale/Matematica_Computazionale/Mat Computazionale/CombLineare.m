function A = CombLineare(A,i,j,k )
% i è la riga che viene modificata
% j è la riga che scelgo per la combinazione lineare
% k è lo scalare

A(i,:)=A(i,:)+k*A(j,:);



end

