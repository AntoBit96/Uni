function [B,D,sing]= Eliminazione(A)
%la function prende da input la matrice A
%retituisce in output: 
%la matrice B che è l'inversa di A
%D che è il determinante di A
%sing che se è:
%0 la matrice A è singolare
%1 la matrice A non è singolare
[n,n]=size(A);
B=eye(n);
A=[A,B];
sing=1;
D=1;
for k=1:n 
    %if A(k,k)==0
        %sing=0;
        %return
    %end
    [pivot,row]=max(abs(A(k:n,k)));
    row=row+k-1;
    if pivot==0
        %error('Matrice singolare') % per non fare comunicare la function con l'utente
        sing=0;
        D=0;
        return
    end %if
    if row~=k
       A=ScambioRighe(A,k,row);
       D=-D;
    end %if
    A=ProdPerScalare(A,k,1/A(k,k));
    for i=[1:k-1,k+1:n]
        A=CombLineare(A,i,k,-A(i,k));
    end %for i  
    D=D*pivot;  
end %for k
B=A(:,n+1:2*n);
end