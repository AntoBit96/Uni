%calcola l'inversa di una matrice attraverso un algoritmo analogo a quello dell'eliminazione di Gauss con l'uso della matrice identità
%C'è qualche problema
function B = Inversa(A)
[n,n]=size(A);
A=[A,eye(n)];
verifica=false;
for k=1:n 
    for h=k:n
       [pivot,row]=max(abs(A(h,k)));
       if A(h,k)~=pivot || A(h,k)==0
          A=ScambioRighe(A,h,h-1+row); 
       end %if   
       if A(h,k)==pivot
           A=ProdPerScalare(A,k,1/A(k,k)); % rende 1 gli elementi della diagonale
           break
       
       elseif pivot==0
           verifica=true;
       end %if   
    end %for h
    if verifica   
       disp('La matrice è singolare quindi non esiste la inversa');
       B=[];
       return
    end %if
    for i=[1:k-1,k+1:n]
        A=CombLineare(A,i,k,-A(i,k)); %azzera gli elementi fuori falla diagonale
    end %for i
    
end %for k
B=A(:,n+1:2*n);
end

