function A = matriceElementare2(i,j,n) %i,j righe da scambiare
I=eye(n);
for k=1:n
    for h=1:n
        if k==h &&(k==i || k==j) 
           A(k,h)=0;
        elseif (k==i && h==j) || (k==j && h==i)
            A(k,h)=1;
        else
            A(k,h)=I(k,h);
        end
    end
end             
end

