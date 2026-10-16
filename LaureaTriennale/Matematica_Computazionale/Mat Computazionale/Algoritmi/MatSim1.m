%costruisce una matrice simmetrica a partire da una matrice triangolare
%superiore data
A=input('matrice triangolare superiore');
n=size(A,1);
for i=2:n 
    for j=1:i-1
        A(i,j)=A(j,i);
    end
end
A