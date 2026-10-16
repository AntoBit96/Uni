%calcola la sottomatrice orlata di A rispetto all'i-esima riga e la j-esima
%colonna
function M = Submatrix (A,i,j)
[m,n]=size(A);
M=[A(1:i-1,1:j-1),A(1:i-1,j+1:n);A(i+1:m,1:j-1),A(i+1:m,j+1:n)];
end

