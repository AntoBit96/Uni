function [x] = Sostituzioneavantidiag1Bidiag(A,b)
%essendo diagonale interamante uguale a 1 posso omettere la divisione per
%A(i,i)
%siccome la matrice è bidiagonale tutti gli elementi A(1:i-2,i) sono uguali
%a zero dunque non contribuiscono nella somma
n=size(A,1);
x=[b(1),zeros(1,n-1)];
for i=2:n
    x(i)=b(i)-A(i,i-1)*x(i-1)';
    
end


end