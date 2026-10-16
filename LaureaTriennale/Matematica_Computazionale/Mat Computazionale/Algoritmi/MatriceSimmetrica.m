%verifica che,data una matrice A, essa sia simmetrica
A=input('Matrice nxn');
n=size(A,1);
for i=1:n
    for j=1:n
        if A(i,j)~=A(j,i)
            disp('A non è simmetrica')
            return
        end
    end
end
disp('A è simmetrica')    
