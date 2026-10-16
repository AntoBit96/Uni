function d = det_Laplace(A)
[nr,nc]=size(A);
if nr~=nc
    error('La matrice non è quadrata');
elseif nr==1
    d=A(1,1);
else
    d=0;
    for j=1:nc
        d=d+A(1,j)*(-1)^(1+j)*det_Laplace(Submatrix(A,1,j));
    end
end
end

