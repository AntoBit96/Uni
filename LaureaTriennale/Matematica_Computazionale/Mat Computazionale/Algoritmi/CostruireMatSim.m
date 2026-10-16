n=input('numero righe matrice quadrata');
for i=1:n
    for j=1:n 
        %A(i,j)=input('dare elemento'); %però j=i:n
        A(i,j)=rand(1);
        A(j,i)=A(i,j);
    end
end
A
        
